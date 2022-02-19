%% B = (1/N*Ac) * int(U(t)-R*I(t))
%% H = (N*i/lc)
%% dados
N = 400; % Nr voltas
Ac = 0.0032;  % Cross-section Area
lc = 0.48; % Mean Core Length
R = 1.3; % Resistência
V = ((12*16*4)-4*(2*4*4))*1E-6; % Volume
%% variáveis auxiliares
Ni50 = N.*I50;
Ni150 = N.*I150;
Ni220 = N.*I220;
Ri50 = R.*I50;
Ri150 = R.*I150;
Ri220 = R.*I220;
NAc = N*Ac;
NAc1 = 1/(N*Ac);

%% H50
H50 = Ni50/lc;
%% H150
H150 = Ni150/lc;
%% H220
H220 = Ni220/lc;

%% B50
v50 = U50-Ri50;
int_v = cumtrapz(t50u,(v50));
int_v = int_v - mean(int_v);
B50 = 1/(N*Ac)*int_v;
Hi50 = 46;
Bi50 = 49;
periodoB50=100;
%plot (t50u,B50)
plot(H50(Hi50:Hi50+periodoB50),B50(Bi50:Bi50+periodoB50),"");
hold on

%% B150
v150 = U150-Ri150;
int_v = cumtrapz(t150u,(v150));
int_v = int_v - mean(int_v);
B150 = 1/(N*Ac)*int_v;
Hi150 = 49;
Bi150 = 49;
periodoB150 = 100;
%plot 150V
plot(H150(Hi150:Hi150+periodoB150),B150(Bi150:Bi150+periodoB150),"m");

%% B220
v220 = U220-Ri220;
int_v = cumtrapz(t220u,(v220));
int_v = int_v - mean(int_v);
B220 = 1/(N*Ac)*int_v;
Hi220 = 50;
Bi220 = 48;
periodoB220 = 100;
%plot 220V
plot(H220(Hi220:Hi220+periodoB220),B220(Bi220:Bi220+periodoB220),"r");
%labels
xlabel("H - Magnetic Field Intensity");
ylabel("B - Magnetic Flux Density");
legend("50V","150V","220V");
hold off

%% calculo perdas por histerese
 Ph50 = polyarea(H50(Hi50:Hi50+periodoB50),B50(Bi50:Bi50+periodoB50));
Ph150 = polyarea(H150(Hi150:Hi150+periodoB150),B150(Bi150:Bi150+periodoB150));
Ph220 = polyarea(H220(Hi220:Hi220+periodoB220),B220(Bi220:Bi220+periodoB220));

Phv50=Ph50/V;
Phv150=Ph150/V;
Phv220=Ph220/V;

