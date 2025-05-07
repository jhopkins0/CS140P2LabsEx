.data
    A:      .word   5, 10, 25, 35, 45
    sum:    .word   30
    idx:    .word   0
.text
.globl main

main:

    li  $t1, 0
    li  $t2, 10
    ori $t3, 0
    
loop:
    slt $t4, $t1, $t2
    beq $t4, $zero, exit

    sll $t5,  $t1,  2
    add $t5, $t5, $t0
    lw $t4, 0($t5)
    add $t3, $t3, $t4
    
    addi $t1, $t1, 1
    j loop



exit:   
    sw $t1, idx
    li $v0, 1
    move $a0, $t0
    syscall

    li $v0, 10
    syscall

