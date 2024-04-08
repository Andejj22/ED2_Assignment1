init_vector;
mdl = "vector_model";
set_param(mdl,"ReturnWorkspaceOutputs","on");
default_sim = sim(mdl);

t_step_speed = 0;
task12_sim = sim(mdl);
t_step_speed = 0.3;
set_param(mdl,"ReturnWorkspaceOutputs","off");

%% Speed and torque
figure;
subplot(2, 1, 1); 
plot(default_sim.w_M.time, n_p*default_sim.w_M.data, 'b', 'linewidth', 2); hold on; grid on; 
stairs(default_sim.w_M_ref.time, n_p*default_sim.w_M_ref.data, '--r', 'LineWidth',1); 

plot(task12_sim.w_M.time, n_p*task12_sim.w_M.data, 'g', 'linewidth',2);
stairs(task12_sim.w_M_ref.time, n_p*task12_sim.w_M_ref.data, '--m', 'linewidth',1);
legend('Rotor speed, magnetized', 'Reference, magnetized', 'Rotor speed, not magnetized', ...
    'Reference, not magnetized','Location','SouthEast');
ylabel('Electr. angular speed (rad/s)');

subplot(2,1,2);
plot(default_sim.tau_M.time, default_sim.tau_M.data, 'b', 'linewidth', 2); hold on; grid on;   
stairs(default_sim.tau_M_ref.time, default_sim.tau_M_ref.data, '--r', 'LineWidth',1); 

plot(task12_sim.tau_M.time, task12_sim.tau_M.data, 'g', 'linewidth', 2); hold on; grid on;   
stairs(task12_sim.tau_M_ref.time, task12_sim.tau_M_ref.data, '--m', 'LineWidth',1); 

legend('Electromagnetic torque, , magnetized', 'Reference, magnetized', 'Electromagnetic torque, not magnetized', 'Reference, not magnetized','Location', 'SouthEast');
xlabel('Time (s)'); ylabel('Torque (Nm)');