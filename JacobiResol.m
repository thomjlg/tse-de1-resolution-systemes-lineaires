function x = JacobiResol(M, N, b, x0, niter)
  #{
  Permet de resoudre un systeme A.x = b par la methode de Jacobi
  avec A = M - N et x0 la solution initiale 
  #}
  
  x = x0;
  n = 0;
  while n <= niter
    x = M^(-1)*(N*x + b);
    n += 1;
  end
end
