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
    
    bne $t3, $t4, false
    add $t0, $t1, $t2
false:
    lui $t5, 0xFFFF
    ori $t5, $t5, 0xFFFF
    xor $t2, $t2, 0xFFFF

endif:
    sw $t0, false
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall
