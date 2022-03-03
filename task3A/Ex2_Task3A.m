%% Exercício 2
Vs = 1500;
deltaEaf = 150;
deltaIf = 0.4;
Ws = (2*pi*Vs)/60;
poles = 4;
We = (poles/2)*Ws;
declive = deltaEaf/deltaIf;
Laf= (sqrt(2)/We)*declive;

L=declive/(2*50*pi); 
Xs = (1/declive)*L*50*pi;
