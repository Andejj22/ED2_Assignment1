%init_vector;
mdl = "vector_model";
set_param(mdl,"ReturnWorkspaceOutputs","on");
default_sim = sim(mdl);

alpha_c = 2*pi*600; % new value for current-controller bandwidth
task13_sim = sim(mdl);
alpha_c = 2*pi*300; % default value for current-controller bandwidth
set_param(mdl,"ReturnWorkspaceOutputs","off");

%% Speed and torque
figure;
subplot(2, 1, 1); 
plot(default_sim.w_M.time, n_p*default_sim.w_M.data, 'b', 'linewidth', 2); hold on; grid on; 
stairs(default_sim.w_M_ref.time, n_p*default_sim.w_M_ref.data, '--r', 'LineWidth',1); 

plot(task13_sim.w_M.time, n_p*task13_sim.w_M.data, 'g', 'linewidth',2);
%stairs(task13_sim.w_M_ref.time, n_p*task13_sim.w_M_ref.data, '--m', 'linewidth',1);
legend('Rotor speed, \alpha_c = 2\pi300 rad/s', 'Reference', 'Rotor speed,\alpha_c = 2\pi600 rad/s', ...
    'Location','SouthEast');
ylabel('Electr. angular speed (rad/s)');

subplot(2,1,2);

plot(task13_sim.tau_M.time, task13_sim.tau_M.data, 'g', 'linewidth', 2); hold on; grid on;   
stairs(task13_sim.tau_M_ref.time, task13_sim.tau_M_ref.data, '--m', 'LineWidth',1); 

plot(default_sim.tau_M.time, default_sim.tau_M.data, 'b', 'linewidth', 2); hold on; grid on;   
%stairs(default_sim.tau_M_ref.time, default_sim.tau_M_ref.data, '--r', 'LineWidth',1); 


legend('Electromagnetic torque, \alpha_c = 2\pi600 rad/s', 'Reference', 'Electromagnetic torque, \alpha_c = 2\pi300 rad/s','Location', 'SouthEast');
xlabel('Time (s)'); ylabel('Torque (Nm)');