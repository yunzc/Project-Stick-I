function [ pdeom ] = eom2( t, des_state, theta, params)
%eom with controller
%   adding pd controller to natural motion
controller = @(des_state, theta, state,param)params.mass*params.grav*params.lc*theta(1)-params.I*(-params.Kd*(theta(2)-des_state.omega)-params.Kp*(theta(1)-des_state.theta));

pdeom =[theta(2); params.mass*params.grav*params.lc/params.I*theta(1)-params.damp*theta(2)-controller(des_state, theta, params)/params.I];

%pdeom =[theta(2); params.mass*params.grav*params.lc/params.I*theta(1)-params.damp*theta(2)-(params.mass*params.grav*params.lc*theta(1)-params.I*(-params.Kd*(theta(2)-des_state.omega)-params.Kp*(theta(1)-des_state.theta)))/params.I];

end

