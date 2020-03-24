# Exercice 0
# Faire une addition dans un registre

.text # <- segment de code.

# Exercice:
# On veux obtenir le nombre 64 modifier le code pour pouvoir avoir 64
# dans t0 à la fin du programme.

mon_code: # <- Label
li   t0, 32 # load immediate: Charge un nombre sur max 12bits dans un registre
addi t0, t0, 32 # Additionne operand1 et un immediat et stock le res dans destination
#      |   |  
#      |   operand1 		
#      destination
#
# Bonus: avoir 64 dans un registre en une seule instruction

li t1, 64
li t2, 4096

addi t2, zero, 32 
add t3, t2, t2
