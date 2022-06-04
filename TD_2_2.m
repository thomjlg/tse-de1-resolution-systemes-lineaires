#############################
#         TD 2.2 :          #
#      Resolution de        #
#    systemes lineaires     #
#############################

close all # ferme fenetres

pkg load image


## Resolution d'un systeme lineaire
##############################
#{
Resout le systeme lineaire A.p = b de differentes manieres
#}

#9)

# Matrice des conditions experimentales
F = horzcat(ones(nexp,1), x1, x2, x3, x4, x2.*x3);

# Systeme A.p = b
A = F'*F;
bprime = F'*y;

cond_it = cond(A) # conditionnement de A

#10)

# Decomposition de A en A = D - E - F
D = diag(diag(A));
#Initialisation de la decomposition
E = zeros(size(A));
F = zeros(size(A));
m = size(A,1);
for i =1:m-1
  E(i+1:m,i) = -A(i+1:m,i);
  F(i,i+1:m) = -A(i,i+1:m);
end

#11)

## Resolution par methode de Jacobi
p0 = [0;0;0;0;0;0];
niter = 100; # nombre d'iteration de la methode
M = D;
N = E + F;
p_J = JacobiResol(M, N, bprime, p0, niter)

#12)

e_J = sqrt((p_v - p_J)'*(p_v - p_J))

#15)

## Resolution par methode Gauss-Seidel
M = D - E;
N = F;
p_GS = GaussSeidelResol(M, N, bprime, p0, niter)

e_GS = sqrt((p_v - p_GS)'*(p_v - p_GS))







