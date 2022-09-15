.data
dato1: .word 2
dato2: .word 10
dato3: .word 50
dato4: .word 70
dato5: .word 34
res: .space 4
.text
main:
lw $t0, dato1($0)
lw $t1, dato2($0)
lw $t2, dato3($0)
lw $t3, dato4($0)
lw $t4, dato5($0)
sgt $t5, $t4, $t0
slt $t6, $t4, $t1
and $t5, $t5, $t6
sgt $t7, $t4, $t2
slt $t8, $t4, $t3
and $t7, $t7, $t8
or $t9, $t5, $t7
sw $t9, res($0)
