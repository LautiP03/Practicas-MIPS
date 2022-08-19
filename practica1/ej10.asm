.data 0x10000000
vector: .word 10, 20
.text
main: lw $s0, vector($0)
lw $s1, vector+4($0)
add $s3, $s0, $s1
sw $s3, vector+8($0)
