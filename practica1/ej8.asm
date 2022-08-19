.data
entrada: .word 0x10203040
.text
main: la $s0, entrada
lh $s1, 0($s0)
lh $s2, 2($s0)
sh $s2, 0($s0)
sh $s1, 2($s0)
