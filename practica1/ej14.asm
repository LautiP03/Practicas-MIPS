.data 0x10000000
entero: .word 0xabcd12bd
.text
main: lw $s0, entero($0)
andi $s1, $s0, 0xfffffd77
sw $s1, entero($0)
