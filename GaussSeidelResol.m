function x = GaussSeidelResol(M, N, b, x0, niter)
  #{
  Permet de resoudre un systeme A.x = b par la methode de Gauss-Seidel
  avec A = M - N et x0 la solution initiale 
  #}
  
  x = x0;
  n = 0;
  while n <= niter
    x = GaussPivot(M, N*x + b, "lower");
    n += 1;
  end
end
