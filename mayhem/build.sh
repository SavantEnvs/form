#!/usr/bin/env bash
#
# mayhem/build.sh — build FORM twice, out of tree under mayhem/ (gitignored build-*/):
#   mayhem/build-fuzz/sources/form  ASan+UBSan (halting) + SanCov, DWARF 3, shell-spawning stubbed, file writes limited to a private per-run scratch dir
#                                    (mayhem/fuzz_sandbox.c) — the binary every Mayhem target runs.
#   mayhem/build-test/sources/form  upstream's normal flags — the oracle mayhem/test.sh runs
#                                    upstream's own check/check.rb suite against.
# Re-runnable and offline: autoreconf/configure only need what is in the image.
set -euo pipefail
[ -n "${SOURCE_DATE_EPOCH:-}" ] || unset SOURCE_DATE_EPOCH

: "${SANITIZER_FLAGS=-fsanitize=address,undefined -fno-sanitize-recover=all -fno-omit-frame-pointer}"
: "${DEBUG_FLAGS:=-g -gdwarf-3}"
: "${CC:=clang}" ; : "${CXX:=clang++}" ; : "${LIB_FUZZING_ENGINE:=-fsanitize=fuzzer}"
: "${MAYHEM_JOBS:=$(nproc)}"
: "${COVERAGE_FLAGS=}"
export CC CXX

cd "$SRC"

# Generate configure (version comes from the git tag; configure.ac falls back to form3.h without one).
[ -x configure ] || autoreconf -i

# UBSan pointer-overflow is relaxed (only that check; ASan and the rest of UBSan stay halting):
# FORM grows its buffers lazily from NULL, so `NULL + 0` (compiler.c:828 subexpbuffers, on the
# first expression of every script) would abort every single input.
SANITIZER_FLAGS="$SANITIZER_FLAGS -fno-sanitize=pointer-overflow"
# SanCov (-fsanitize=fuzzer-no-link) goes on the project code itself so Mayhem sees edges; it is
# added unconditionally (also with no sanitizers).
CONF_ARGS=(--disable-threaded --disable-parform --without-flint --without-zstd --disable-debug)

# 1) Fuzz builds. FORM's main() is renamed form_main (-Dmain=form_main, passed at make time only:
#    configure's probes need a real main) so a small entry point under mayhem/ can hand FORM its
#    input the way a user would; the linked objects are otherwise upstream's, unchanged.
#    build-fuzz  -> mayhem/build-fuzz/form_script     (mayhem/form_script.c: `form -q [opts] - < SCRIPT`)
#    build-fuzzw -> mayhem/build-fuzzw/form_fileinput (mayhem/form_fileinput.c: `form -q -D FILE=IN SCRIPT`)
#    build-fuzzw also relaxes UBSan shift-base: minos.c's byte-order macro CFD() left-shifts signed
#    MLONGs (minos.c:148), which trips on every valid TableBase file (any field holding -1), so no
#    TableBase input could get past the header otherwise.
fuzz_build() { # <dir> <sanitizer flags> <entry .c> <output name>
  local d="$1" san="$2" entry="$3" out="$4"
  local flags="$san -fsanitize=fuzzer-no-link $DEBUG_FLAGS -O1"
  mkdir -p "$d/shim"
  $CC  $san $DEBUG_FLAGS -c "$SRC/mayhem/fuzz_sandbox.c" -o "$d/shim/fuzz_sandbox.o"
  $CXX $san $DEBUG_FLAGS -c "$SRC/mayhem/lsan_off.cc" -o "$d/shim/lsan_off.o"
  $CC  $san $DEBUG_FLAGS -c "$SRC/mayhem/$entry" -o "$d/shim/entry.o"
  # The sandbox is linked at make time only: configure's probes write conftest files it refuses.
  local shims="$d/shim/fuzz_sandbox.o $d/shim/lsan_off.o"
  if [ ! -f "$d/config.status" ]; then
    ( cd "$d" && "$SRC/configure" "${CONF_ARGS[@]}" \
        CFLAGS="$flags" CXXFLAGS="$flags" \
        LDFLAGS="$san -fsanitize=fuzzer-no-link $DEBUG_FLAGS $d/shim/lsan_off.o" )
  fi
  make -C "$d/sources" -j"$MAYHEM_JOBS" form \
    CFLAGS="$flags -Dmain=form_main" CXXFLAGS="$flags -Dmain=form_main" \
    LDFLAGS="$san -fsanitize=fuzzer-no-link $DEBUG_FLAGS $shims $d/shim/entry.o"
  cp -f "$d/sources/form" "$d/$out"
  test -x "$d/$out"
}
fuzz_build "$SRC/mayhem/build-fuzz"  "$SANITIZER_FLAGS" form_script.c form_script
fuzz_build "$SRC/mayhem/build-fuzzw" "$SANITIZER_FLAGS -fno-sanitize=shift-base" form_fileinput.c form_fileinput

# 2) Test (oracle) build: upstream's normal flags, no sanitizers, no shims.
T="$SRC/mayhem/build-test"
mkdir -p "$T"
if [ ! -f "$T/config.status" ]; then
  ( cd "$T" && env -u CFLAGS -u CXXFLAGS -u LDFLAGS "$SRC/configure" "${CONF_ARGS[@]}" \
      CFLAGS="-O2 $COVERAGE_FLAGS" CXXFLAGS="-O2 $COVERAGE_FLAGS" LDFLAGS="$COVERAGE_FLAGS" )
fi
make -C "$T/sources" -j"$MAYHEM_JOBS" form
test -x "$T/sources/form"
echo "build.sh: OK"
