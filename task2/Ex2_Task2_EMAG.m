%% Variáveis
% velocidade em RPM
v=1740;

% valores de tensão e corrente
Vf = 180; %tensão de campo
If = 1.6; %corrente de campo
Va = 180; %tensão da armadura
Ia = 17.7; %corrente da armadura
Pout = 2500; %potência de entrada(W)

Ea = Pout/Ia; %tensão gerada na armadura
Ra = (Va-Ea)/Ia; %resistência na armadura
Rf = Vf/If; %resistência no campo
kf = Ea/(If*(2*pi*v/60)); %constante de campo
Pin = Ia*Va+If; %Potência de entrada
Eficiencia = Pout/Pin*100; %Eficiência