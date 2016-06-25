%initial condition [position; velocity]
theta0 = [30;0];
params = sys_params();
des_state = desiredstate();


[t,theta] = ode45(@(t,theta) eom2(t, des_state, theta, params), [0 0.1], theta0);
%animate simulation 
figure;
theta_rad=deg2rad(theta(:,1));
phi=linspace(-pi,pi);
xc=cos(phi);
yc=-sin(phi);
plot(xc,yc);
axis equal;
xt=[0 0];
yt=[0 1];
hold on 
t=area(xt,yt);%initial flat triangle
hold off
for j=1:length(theta_rad)
    xt(2)=-sin(theta_rad(j)); %new vertex value
    yt(2)=cos(theta_rad(j));
    t.XData=xt;
    t.YData=yt;
    drawnow limitrate %displat updates
end


% figure;
% plot(t,theta(:,1),'-o',t,theta(:,2),'-o')
% title('fallin stick');
% xlabel('Time t');
% ylabel('Solution theta');
% legend('theta','thetadot')