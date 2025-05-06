.data
    sum:    .word   0
    N:      .word   5
    A:      .word   1,2,3,4,5
.text
.globl main

main:

    la $t0, A      # $t0: starting address of array
    lw  $t1, sum
    lw $t2, N
    ori $t3, $zero, 0
    ori $t4, $zero, 1

loop:
    lw $t7, 0($t0)
    add $t1, $t1, $t7

    add $t3, $t3, $t4
    

    bne $t3, $t2, loop

    add $t1, $t1, $t7

    add $t7, $t0, 4
    lw $t7, 0($t0+4)
    add $t1, $t1, $t7

    #lui $t0, 0x1001
    #ori $t0, $t0, 0004


    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall

