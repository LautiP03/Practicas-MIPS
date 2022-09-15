.data 
v: .word 2, -4, -6
bool: .space 3
.text
main:
lw $t1, v($0)
lw $t2, v + 4($0)
lw $t3, v + 8($0)
sge $t4, $t1, $0
sb $t4, bool($0)
sge $t5, $t2, $0
sb $t5, bool + 1($0)
sge $t6, $t3, $0
sb $t6, bool + 2($0)
