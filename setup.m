clear, clc, close all


camera_angle=0;
camera_displacement= [-1.2 0 0.25];


axis_width=0.5;
wheel_radius=0.1;
wheel_tickness=0.025;
encoder_ticks=180;


P_R=[18,18];
P_L=[18,-18];

model='UNrobotEnvironment/';

model='UNrobot_intermediate/';
obstacles=csvread('obstacles2.csv');
set_param([model 'Obstacle Environment'],'obstacles',mat2str(obstacles))
get_param([model 'Obstacle Environment'],'obstacles')
    

dt=1e-4;
t_end=100;
Ts=0.1;

mode='on';   % on/off
paramNameValStruct.SimMechanicsOpenEditorOnUpdate = mode;

my_model=sim(model,paramNameValStruct);





%%

t=my_model.sensors.time;
sensors=my_model.sensors.signals.values;
actuators=my_model.actuators.signals.values;
positions=my_model.positions.signals.values+20;
real_pos=my_model.real_pos.signals.values+20;
angle=my_model.theta.signals.values;
contact=squeeze( my_model.contact.signals.values);

penalty_contact=sum(abs(diff(contact)))/2;

%%
figure()
hold on

plot(positions(:,1), positions(:,2))

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


pause(0.1)
clc


