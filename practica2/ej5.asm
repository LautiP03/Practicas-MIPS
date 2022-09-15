.data
v: .word 2, 3, 0, 8, 0, 24
total: .space 4
elem: .word 6
.text
main: la $t9, v
and $t0, $t0, $0
lw $t1, elem($0) #cargo en $t1 la cant de elementos
ciclo: bgt $t0, $t1, fin #sale del ciclo si $t0(contador) es mayor a la cant de elementos
lw $t2, 0($t9) #va cargando cada elemento de v
seq $t5, $t2, $0 #$t5 es 1 si el elemento es 0, si no 0
add $t3, $t3, $t5 #contador que va sumando 1 o 0
addi $t9, $t9, 4 #cambia de elemento de v
addi $t0, $t0, 1 #suma el contador del ciclo
j ciclo #vuelve a repetirse el ciclo
fin: sw $t3, total($0) #sale del ciclo, y almacena en $t3 el resultado
