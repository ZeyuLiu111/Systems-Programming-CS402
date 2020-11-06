.data 0x10000000
.align 0
char1:  .byte 'a'
double1:    .double 1.1
char2:  .byte 'b'
half1:  .half 0x8001
char3:  .byte 'c'
word1:  .word 0x56789abc
char4:  .byte 'd'

.text
.globl main
main: lui $1, 0x1000
    ori $s0, $1, 0x000D
    lwl $t3, 3($s0)
    sll $0, $0,0
    lwr $t4, 0($s0)
    sll $0, $0, 0
    add $t0, $t3, $t4
    ori $v0, $0, 10
    syscall
    jr $ra