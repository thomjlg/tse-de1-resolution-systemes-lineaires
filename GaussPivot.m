function x = GaussPivot(A, b, mattype)
  #{
  Resout le systeme     A.x = b
  par la methode du pivot de Gauss
  mattype precise si A est triangulaire inferieure ou superieure
  #}
  
  n = size(A,1);
  if mattype == "upper"
    grid = n:-1:1;
  elseif mattype == "lower"
    grid = 1:n;
  
  end
  x = zeros(n,1);
  
  for i = grid
    x(i) = (b(i) - A(i,:)*x)/A(i,i);
  end
  
end  