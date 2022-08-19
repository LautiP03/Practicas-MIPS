.data 0x10000000
dividendos: .word 18, -1215
.text
main: li $t1, 0x10010000 
lw $s0, dividendos($0)
lw $s1, dividendos+4($0)
div $s3, $s0, 5
div $s4, $s1, 5
sw $s3, ($t1)
sw $s4, 4($t1)
