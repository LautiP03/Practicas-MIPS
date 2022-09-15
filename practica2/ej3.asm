.data
v: .word 1, -4, -5, 2
bool: .space 1
.text
main:
lw $t0, v($0)
lw $t1, v + 4($0)
lw $t2, v + 8($0)
lw $t3, v + 12($0)
slt $t4, $t0, $0
slt $t5, $t1, $0
slt $t6, $t2, $0
slt $t7, $t3, $0
and $t8, $t4, $t5
and $t9, $t8, $t6
and $t9, $t9, $t7
sb $t9, bool($0)
