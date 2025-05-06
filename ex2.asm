.data
    ival: .word 100
    jval: .word 200
    fval: .word 0
    gval: .word 10
    hval: .word 5
.text
.globl main

main:

    lw $t0, fval
    lw $t1, gval
    lw $t2, hval
    lw $t3, ival
    lw $t4, jval
    