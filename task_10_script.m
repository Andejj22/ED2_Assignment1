%% u_s real part comparison
figure;
plot(u_s_ref_lim.Time, real(u_s_ref_lim.Data)); grid on; hold on;
yline(real(u_s));
legend('$u_d$, simulated','$u_d$, calculated', 'Interpreter', 'latex');
xlabel('Time (s)');
title('$u_d$ calculated vs simulated comparison','Interpreter','latex');
%% u_s imag part comparison
figure;
plot(u_s_ref_lim.Time, imag(u_s_ref_lim.Data)); grid on; hold on;
yline(imag(u_s));
title('$u_q$ calculated vs simulated comparison','Interpreter','latex');
xlabel('Time (s)');
legend('$u_q$, simulated','$u_q$, calculated', 'Interpreter','latex');
%% i_s real part comparison
figure;
plot(i_s_ref.Time, real(i_s_ref.Data)); grid on; hold on;
yline(i_d);
legend('$i_d$, simulated','$i_d$, calculated', 'Interpreter', 'latex');
xlabel('Time (s)');
title('$i_d$ calculated vs simulated comparison','Interpreter','latex');
%% i_s imag part comparison
figure;
plot(i_s_ref.Time, imag(i_s_ref.Data)); grid on; hold on;
yline(i_q);
legend('$i_q$, simulated','$i_q$, calculated', 'Interpreter', 'latex');
xlabel('Time (s)');
title('$i_q$ calculated vs simulated comparison','Interpreter','latex');