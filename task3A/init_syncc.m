 %% Synchronous Machine Params: 
L = 0.566144;%From 2nd question, self inductance
R = 0; 
M = 1.20765;%From 2nd question, mutual inductance
I_f = 0.5;
U_rms = 220; 
f = 50;
omega_e = f*2*pi;

%% Initial calculations: 
X = L*omega_e;
Ea_rms = M*omega_e*I_f;
phi = atan(-X/R);
I = (U_rms - Ea_rms) / (-X*sin(phi) + R*cos(phi)); 

%% Final
Ea = Ea_rms * sqrt(2);
U = U_rms * sqrt(2);
phi = phi*180/pi;
Z_mod = sqrt(X^2+R^2);
alpha_z = atan(R/X);
Speed = 1500 * 2*pi/60;


