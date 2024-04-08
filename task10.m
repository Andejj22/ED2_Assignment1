psi_r = 0.9; %given rotor flux
T_L = 14.63; %nominal torque
T_r = L_M/R_R; %rotor time constant

w_M = 2*pi*20; % given motor angular speed (rad/s)
w_m_calc = n_p * w_M; % calculated motor electrical speed (rad/s)
%w_r_calc = w_s_calc - w_m_calc; % slip angular frequency (rad/s)

w_r_calc = (2*T_L*R_R)/(3*n_p*psi_r^2);

i_d = psi_r/L_M
i_q = (2*T_L)/(3*n_p*psi_r)
i_s = i_d+1i*i_q;
i_s_abs = sqrt(i_d^2+i_q^2)

w_s_calc = w_r_calc + w_m_calc; % stator angular frequency (rad/s)
psi_s = i_s*(L_sigma + L_M/(1+1i*w_r_calc*T_r));

u_s = R_s*i_s + 1i*w_s_calc*psi_s;
u_d_calc = real(u_s)
u_q_calc = imag(u_s)
u_s_abs = abs(u_s)