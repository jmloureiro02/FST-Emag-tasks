%% Variáveis

% Valores de corrente de campo
If1=1.0;
If2=1.6;
If3=2.0;

% Velocidade angular em rad/s
w = 2*pi*v/60;

%% Plotting

W = linspace(0,w);
Torque1 = kf*If1*If1*((Rf-kf*W)/Ra);

hold on
plot(W,Torque1);

W = linspace(0,w);
Torque2 = kf*If2*If2*((Rf-kf*W)/Ra);

plot(W,Torque2);

W = linspace(0,w);
Torque3 = kf*If3*If3*((Rf-kf*W)/Ra);

plot(W,Torque3);