#!/usr/bin/env bash
#
# mayhem/test.sh — RUN this repo's OWN functional test suite (already built by mayhem/build.sh).
# exit 0 = pass. EDIT per repo. PATCH-grade oracle: after an agent patches the source, the grader
# rebuilds (build.sh) then runs this. DELETE this file if the repo has no meaningful tests.
#
# IMPORTANT:
#  * Must assert BEHAVIOR/OUTPUT, not just exit status. The oracle has to check asserted values /
#    golden-output diffs / known-answer results — so a PATCH that "fixes" a bug by making the program
#    exit(0) (or any no-op) FAILS here. Running inputs and checking only "exit 0 / didn't crash" is
#    NOT a functional test (it's trivially reward-hackable) — use the project's real assertion suite.
#  * Do NOT build here — mayhem/build.sh already compiled the test suite (with the project's normal
#    flags). This script only RUNS the pre-built tests and reports counts. If the test runner is
#    missing, that's a build.sh bug — fail loudly rather than silently rebuilding.
#  * REQUIRED OUTPUT — a CTRF (https://ctrf.io) summary so Mayhem/the PATCH grader reads the counts:
#      - writes a CTRF JSON report to ${CTRF_REPORT:-$SRC/ctrf-report.json}, and
#      - prints a one-line `CTRF {...}` marker to stdout (same JSON, compact).
#    Only `results.summary` (with tests/passed/failed/pending/skipped/other) is required.
#    Use the emit_ctrf helper below; it computes tests = passed+failed+skipped and sets the exit
#    code (0 iff failed==0). Map your framework's output to passed/failed/skipped.
set -uo pipefail
[ -n "${SOURCE_DATE_EPOCH:-}" ] || unset SOURCE_DATE_EPOCH
: "${MAYHEM_JOBS:=$(nproc)}"   # build parallelism; env-overridable, falls back to nproc (use -j"$MAYHEM_JOBS")
cd "$SRC"

# emit_ctrf <tool> <passed> <failed> [skipped] [pending] [other]
# Writes a CTRF report (file + stdout `CTRF {...}` marker) and returns non-zero iff failed>0.
emit_ctrf() {
  local tool="$1" passed="$2" failed="$3" skipped="${4:-0}" pending="${5:-0}" other="${6:-0}"
  local tests=$(( passed + failed + skipped + pending + other ))
  cat > "${CTRF_REPORT:-$SRC/ctrf-report.json}" <<JSON
{
  "results": {
    "tool": { "name": "$tool" },
    "summary": {
      "tests": $tests,
      "passed": $passed,
      "failed": $failed,
      "pending": $pending,
      "skipped": $skipped,
      "other": $other
    }
  }
}
JSON
  printf 'CTRF {"results":{"tool":{"name":"%s"},"summary":{"tests":%d,"passed":%d,"failed":%d,"pending":%d,"skipped":%d,"other":%d}}}\n' \
    "$tool" "$tests" "$passed" "$failed" "$pending" "$skipped" "$other"
  [ "$failed" -eq 0 ]
}

# Upstream's own suite: check/check.rb runs every test fold in check/*.frm (examples, features,
# fixes, polynomial, ...) against the oracle build of FORM and asserts on its output (expressions,
# error messages), so a neutered binary fails every test. Test::Unit prints the summary line
#   "<n> tests, <a> assertions, <f> failures, <e> errors, <p> pendings, <o> omissions, <x> notifications"
FORM_BIN="$SRC/mayhem/build-test/sources/form"
[ -x "$FORM_BIN" ] || { echo "test.sh: $FORM_BIN missing — build.sh did not build the oracle" >&2; emit_ctrf check.rb 0 1; exit 1; }
command -v ruby >/dev/null || { echo "test.sh: ruby missing" >&2; emit_ctrf check.rb 0 1; exit 1; }
LOG="$(mktemp)"
TMPDIR="${TMPDIR:-/tmp}" ruby "$SRC/check/check.rb" -w "$MAYHEM_JOBS" -t 60 "$FORM_BIN" 2>&1 | tee "$LOG"
line="$(grep -E '^[0-9]+ tests, [0-9]+ assertions, [0-9]+ failures, [0-9]+ errors, [0-9]+ pendings, [0-9]+ omissions' "$LOG" | tail -1)"
rm -f "$LOG"
if [ -z "$line" ]; then
  echo "test.sh: no Test::Unit summary line found" >&2
  emit_ctrf check.rb 0 1
  exit 1
fi
read -r tests _ asserts _ fails _ errs _ pend _ omit _ <<<"$(echo "$line" | tr -d ',')"
failed=$(( fails + errs ))
passed=$(( tests - failed - pend - omit ))
# A run with no assertions at all means nothing was actually checked.
[ "$asserts" -gt 0 ] || failed=$(( failed + 1 ))
emit_ctrf check.rb "$passed" "$failed" "$omit" "$pend"
