omega_s = 2*pi*40; % Stator frequency [rad/s]
R_s =  3.7; % Stator resistance [ohm]
L_sigma = 21*10^-3; % Leakage inductance [H]
L_M = 224*10^-3; % Magnetizing inductance [H]
psi_s_ref = 0.95; % Flux linkage reference [Vs]

Z = R_s+ 1j*omega_s*(L_sigma+L_M); % Stator impedance
u_s_ref = omega_s*psi_s_ref;

% u_s_ref = R_s*psi_s_ref/L_sigma+1i*omega_s*psi_s_ref;

i_s_peak = abs(u_s_ref/Z);

figure;
plot(i_ss.Time, abs(i_ss.Data));
ylabel("Stator current $i_s^s$", Interpreter="latex");
xlabel("Time (s)");
yline(i_s_peak,"LineWidth",2,"Color","red");



