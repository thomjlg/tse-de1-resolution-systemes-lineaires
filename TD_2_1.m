#############################
#         TD 2.1 :          #
#      Resolution de        #
#    systemes lineaires     #
#############################

clear all # supprime workspace
close all # ferme fenetres

pkg load image


## Factorisation LU
#############################
#{
On veut resoudre le systeme lineaire A.x =b 
#}
A = [1 2 6 8;2 5 15 23;6 15 46 73;8 23 73 130];
b1 = [17;45;140;234];
b2 = [18;46;139;235];

# Factotisation LU
[L, U] = LUfact(A);

# Resolution du premier systeme
y1 = GaussPivot(L, b1, "lower");
x1 = GaussPivot(U, y1, "upper")

# resolution du second systeme
y2 = GaussPivot(L, b2, "lower");
x2 = GaussPivot(U, y2, "upper")

# Conditionnement de la matrice A
cond_LU = cond(A)


