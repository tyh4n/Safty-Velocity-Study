% Created by Tianyi Han, Nov.8 2024

%% Define common variables
t_init = 0;                 % Start time [ms]
t_final = 2000;             % End time [ms]
t_interval = 10;            % Simulation time resolution [ms]

% Robot parameters
I_ball = 0.052;     % Ball inertia [kgm^2]
m_ball = 4.0;       % Ball mass[kg]
I_body = 3.0;       % Body inertia [kgm^2]
m_body = 92;        % Body mass [kg] 
r = 0.114;          % Ball radius [m]
l = 0.168;          % Body length (IP) [m]
g = 9.81;           % [m/s^2]

% Seat parameter
w_seat = 0.4;       % Seat width [m]
d_seat = 0.4;       % Seat depth [m]

% Contact Model
k_gy = 80000;       % vertical ground interaction stiffness [N/m]
v_gy_max = 0.1;    % maximum vertical ground relaxation speed [m/s]
k_gx = 8000;        % horizontal ground interaction stiffness [N/m]
v_gx_max = 0.1;    % maximum horizontal ground relaxation speed [m/s]
mu_stick = 0.9;     % stiction coefficient
mu_slide = 0.8;     % sliding coefficient
vLimit = 0.01;      % slip-stic transition velocity [m/s]

%% Load saved trajectory
load('data/traj_1.mat', 'tau_sol', 'traj_sol', 'phi_d_sol', 'phi_dd_sol', 'theta_sol', 'theta_d_sol', 'theta_dd_sol', 'time');

%% Start Simulation
sim('payload_simulation',t_final/1000);
% For side view, switch to y up and then front view 