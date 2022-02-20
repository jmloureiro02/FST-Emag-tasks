%% constants
% We can use the field current constants used in exercise 1

ssw1 = 220; %rad/s
ssw2 = 175; %rad/s
ssw3 = 150; %rad/s

Pin1 = Va*Ia+Vf*If1;

T1=kf*If1*Ia;
Pout1 = ssw1*T1;
Eff1 = Pout1/Pin1*100;

Pin2 = Va*Ia+Vf*If2;
T2=kf*If2*Ia;
Pout2 = ssw2*T2;
Eff2 = Pout2/Pin2*100;

Pin3 = Va*Ia+Vf*If2;
T3=kf*If3*Ia;
Pout3 = ssw3*T3;
Eff3 = Pout3/Pin3*100;