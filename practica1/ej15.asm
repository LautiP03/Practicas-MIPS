.data 0x10000000
entero: .word 0xff0f1235
.text
main: lw $s0, entero($0)
xor $s1, $s0, 0x288
sw $s1, entero($0)
