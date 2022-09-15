.data
v: .byte 0, 1, 1, 1, 0
res: .space 3
.text
main:
lb $t1, v($0)
lb $t2, v + 1($0)
lb $t3, v + 2($0)
lb $t4, v + 3($0)
lb $t5, v + 4($0)
and $t6, $t1, $t5
sb $t6, res($0)
or $t7, $t2, $t4
sb $t7, res + 1($0)
or $t8, $t1, $t2
and $t9, $t8, $t3
sb $t9, res + 2($0)
