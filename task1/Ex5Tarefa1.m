%% Ex5
%tiramos o valor maximo de cada uma das medições através
%da formula e dos gráficos de B que se obteve no 4
%para esse valor é ver o pico de cada gráfico de B
%criar um vetor para B feito através dos 3 valores máximos

%% Constantes
%Volume
V = (0.012*0.016*0.004)-4*(0.002*0.004*0.004);
%Frequência
f = 50;

%% Amplitudes B50, B150 e B220
%B50,B150 e B220 foram calculados no Ex4 da task
ampB50 = max(B50);
ampB150 = max(B150);
ampB220 = max(B220);

%% Vetor com amplitudes da densidade de flux
% vetor com as amplitudes do B dos 3 ensaios
Bcurve = [ampB50,ampB150,ampB220];
% vetor com as perdas por volume dos 3 ensaios
Pv = [(Pfe50/V),(Pfe150/V),(Pfe220/V)];
