# Exercice 1
# utiliser un appel système comme write

# On indique qu'on souhaite ranger des données 
.data

# .asciz permet de déclarer une chaine finie par un 0x00 en ascii
msg: .asciz "Hello World" 
#nombre: .word 32

.text # <- segment de code.

# Exercice: Observation dans Rars
#
# - Quelle est l'addresse de base de la chaine msg? Son addresse de fin?
# - Dans quelle segment de la mémoire est elle?
# - Quelle sont les valeurs en hexadecimales présente dans .data?

#la: load Adress, charge une adresse (label) dans un registre. 
la a0, msg
li a7, 4 # appel systeme 4 selon la doc de Rars printString.
#ecall # permet de basculer en mode kernel pour faire l'appel systeme

# Bonus: avoir 64 dans un registre en une seule instruction
li a0, 42
li a7, 1
ecall
