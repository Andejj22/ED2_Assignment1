%% Speed and torque
figure;
subplot(2, 1, 1); 
plot(w_M.time, n_p*w_M.data, 'b', 'linewidth', 2); hold on; grid on; 
stairs(w_M_ref.time, n_p*w_M_ref.data, 'r'); 
legend('Rotor speed', 'Reference', 'Location','SouthEast');
ylabel('Electr. angular speed (rad/s)');

subplot(2,1,2);
plot(tau_M.time, tau_M.data, 'b', 'linewidth', 2); hold on; grid on;   
stairs(tau_M_ref.time, tau_M_ref.data, 'r'); 
legend('Electromagnetic torque', 'Reference', 'Location', 'SouthEast');
xlabel('Time (s)'); ylabel('Torque (Nm)');