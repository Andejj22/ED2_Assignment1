clear;              % Removes variables from the workspace
clc;                % Clear the screen

%% Inverse-Gamma model parameters used in the control system
R_s = 3.7;          % Stator resistance
R_R = 2.1;          % Rotor resistance
R_R_actual = R_R;   % Variable for changing the values in task 11
L_M = 0.224;        % Magnetizing inductance
L_sigma = 0.021;    % Leakage inductance 
n_p = 2;            % Number of pole pairs
J = 0.015;          % Total moment of inertia

%% Control parameters
t_step = 0.6;       % Load torque step time
%t_step = 0;
t_step_speed = 0.3; % Speed step time
w_m_ref = 2*pi*40; % Electrical speed reference

T_L = 14.63;        % Load torque step final value
T_s = 125e-6;       % Sampling period, switching frequency f_sw = 1/(2*T_s)
alpha_c = 2*pi*300; % Current-control bandwidth
alpha_s = 2*pi*20;  % Speed-control bandwidth
tau_M_max = 20;     % Maximum torque
psi_R_ref = 0.9;    % Rotor-flux reference