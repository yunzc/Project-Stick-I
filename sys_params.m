function [params] = sys_params()
%system parameters
%   params.
I = 5;
mass = 5;
gravity = 9.8;
lc = 5;
dampening = 2;
params.I = I;
params.mass = mass;
params.grav = gravity;
params.lc = lc;
params.damp = dampening;
params.Kd = 200;
params.Kp = 10000;

end

