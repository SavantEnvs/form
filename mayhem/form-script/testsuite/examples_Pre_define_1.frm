    #define c "3"
    #define var1(a,b) "(`~a'+`~b'+`c')"
    #define var2(a,b) "(`~a'+`~b'+`~c')"
    #redefine c "4"
    Local F1 = `var1(1,2)';
    Local F2 = `var2(1,2)';
    Print;
    .end
