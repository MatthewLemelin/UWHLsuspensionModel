function A = verticalHeight(a,r,y,t0,dt)
%http://www.shimrestackor.com/Code/User_Manual/Sections/Suspension_Velocity/suspension-velocity.htm

y0=(r-y);  %vertical distance of center hub to lip (y0)
x0=sqrt((r^2)-(y0^2));%Initial Horizontal distance from center of hub to lip
v=a*t0; %velocty of the pod wrt the global time
timeOver = (-v+sqrt(v^2+2*a*x0))/a;
t = 0:dt:timeOver; % we have to define t0 as out 0 in this model.
h = sqrt(r^2-(x0-v.*t).^2);
%t2=[t0+timeOver:dt:t0+timeOver*2]';
t2=[t0:dt:t0+timeOver]';
A = [t2,h',t'];













