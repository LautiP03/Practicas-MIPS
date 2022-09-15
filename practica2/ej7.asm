.data
v: .asciiz "pepe huele"
repe: .byte 'e'
.align 2
cont: .space 4
.text
main: la $t0, v
lb $t1, repe($0) #cargo en $t1 la letra a contar
ciclo: lb $t2, 0($t0) #cargo en $t2 cada caracter de v
beq $t2, $0, fin #si el caracter es el terminador sale del ciclo
seq $t3, $t2, $t1 #guardo en $t3 un 1 o un 0 si el caracter coincide con la letra a contar
add $t4, $t4, $t3 #sumo 1 o 0 según el caso
addi $t0, $t0, 1 #cambio de caracter de v
j ciclo #vuelvo a repetir el ciclo
fin: sw $t4, cont($0) #una vez fuera el ciclo, cargo el resultado en cont
