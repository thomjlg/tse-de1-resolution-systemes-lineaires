#{
Génere les données simulant la fabrication des brioches
#}



nexp = 160; # nombre de brioches
# vitesse d'incorporation des blancs ([100,200]g/min)
x1 = 150 + (200-150)*rand(nexp,1); 
x2 = 40 + (50-40)*rand(nexp,1); # duree de cuisson ([40,50]min)
x3 = 150 + (200-150)*rand(nexp,1); # temperature du four ([150,200]deg C)
x4 = 15 + (20-15)*rand(nexp,1); # portion de levure ([15,20]g/kg)

# Vraie valeur du vecteur des parametres
p_v = [50;-0.035;0.05;0.005;0.35;-0.005];

# Donnees simulees
y_v = p_v(1) + p_v(2).*x1 + p_v(3).*x2 + p_v(4).*x3 + p_v(5).*x4 + p_v(6).*x2.*x3;
bruit = randn(nexp,1); # vecteur de bruit
y = y_v + bruit; # hauteur des n brioches

