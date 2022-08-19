.data 0x10000000
V: .word 10, 20, 25, 500, 3
.text 
main: lw $s0, V($0)
lw $s1, V+4($0) 
lw $s2, V+8($0) 
lw $s3, V+12($0) 
lw $s4, V+16($0) 
li $t0, 0x10010000
sw $s0, 0($t0)
sw $s1, 4($t0)
sw $s2, 8($t0)
sw $s3, 12($t0)
sw $s4, 16($t0)
