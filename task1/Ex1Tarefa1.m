plot(t50u,U50)
hold on
plot(t50u,I50)
hold on
plot(t150u,U150)
hold on
plot(t150u,I150)
hold on
plot(t220u,U220)
hold on
plot(t220u,I220)

%% dados
R = 1.3;
T50=t50u(2500)-t50u(1);
T150=t150u(2500)-t150u(1);
T220=t220u(2500)-t220u(1);

%% (1).50V
Pact50 = (1/T50)*trapz(t50u,(U50.*I50));
Pcu50 = R*((1/T50)*trapz(t50u,I50.*I50));
Pfe50 = Pact50-Pcu50;

%% (2).150V
Pact150 = (1/T150)*trapz(t150u,U150.*I150);
Pcu150 = R*((1/T150)*trapz(t150u,I150.*I150));
Pfe150 = Pact150-Pcu150;

%% (3).220V
Pact220 = (1/T220)*trapz(t220u,U220.*I220);
Pcu220 = R*((1/T220)*trapz(t220u,I220.*I220));
Pfe220 = Pact220-Pcu220;
