%% setup enviroment 
% This matlab scrip is meant to create enviroment where you can
% extract information from the simulation and tinker around while developing
% your solution of the challenge. 
clear, clc, close all

%% Robot properties 
% the robot and simulation parameters  for the competition are set 
% acording to the especification guide. However exploring how this parameters 
% affect the performance of your solution is encourage in the hope of
% developing robust algorithms in the face of a variaty of enviroments

axis_width=0.5;           %[m]
wheel_radius=0.1;         %[m]
encoder_ticks=180;        
P_R=[0.18 -0.18];          % rigth sensor  position [m]
P_L=[0.18 0.18];         % left sensor position  [m]
T_max=4;                  % Maximum Torque  [N m]

% wheel friction coefficient
F_s=3;                    % static friction [adimensional]
F_b=0.7;                  % dynamic friction [s/m]

% Mechanic explorer point of view position
camera_angle=0;
camera_displacement= [-1.2 0 0.25];


    
%% Simulation parameters

obstacles=csvread('obstacles.csv');
model='UNrobot_intermediate/';

% -- IF YOU ARE COMPITING IN PROFESIONAL CATEGORY UNCOMENT THE FOLOWING 
% model='UNrobot_pro/';
% load binaryMap
% show(binaryMap)


load_system( model )
get_param([model 'Obstacle Environment'],'obstacles')

Ts=0.1;

t_end=30;

mode='on';   % on/off
paramNameValStruct.SimMechanicsOpenEditorOnUpdate = mode;

my_model=sim(model,paramNameValStruct);


%% information log from simulation

t=my_model.sensors.time;
sensors=my_model.sensors.signals.values;
actuators=my_model.actuators.signals.values;
positions=my_model.positions.signals.values+20;
real_pos=my_model.real_pos.signals.values;
angle=my_model.theta.signals.values;
contact=squeeze( my_model.contact.signals.values);
%lidar=squeeze( my_model.lidar.signals.values);


penalty_contact=sum(abs(diff(contact)))/2;


%% view environment

figure()
hold on

% estimated position: 
plot(positions(:,1), positions(:,2))

% This values 
plot(real_pos(:,1), real_pos(:,2),"--")


for k=1:size(obstacles,1)
  rectangle('Position',obstacles(k,:),'FaceColor',[0 .5 .5 .5])
end

axis equal
xlim([0,40])
ylim([0,40])
xline(0:40,'Color',[0.75 0.75 0.75]), yline(0:1:40,'Color',[0.75 0.75 0.75])
xline(0), yline(0)

title("position")




