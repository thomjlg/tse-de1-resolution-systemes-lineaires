function [L, U] = LUfact(A)
  #{
  Donne la factorisation LU de la matrice A
  #}
  
  n = size(A,1);
  U = A;
  L = diag(ones(n,1));
  for i = 1:n
    E = diag(ones(n,1));
    Einv = diag(ones(n,1));
    l = U(i+1:n,i)./U(i,i);
    E(i+1:n,i) = -l;
    Einv(i+1:n,i) = l;
    U = E*U;
    L = L*Einv;
  end
end
