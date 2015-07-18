%Solution for Lorentz System
clear;clc;
%initial values
sigma = 10;
P = 28;
B = 8/3;
x(1) = 0.01;
y(1) = 0.01;
z(1) = 0.01;
dt = 0.01;
n = 10000;
%create for loop with the following values for n iterations
%dx = sigma*(y(1)-x(1));
%x(2)= x(1)+dx*dt
%dy = x(1)*(P-z(1))-y(1);
%y(2)= y(1)+dy*dt
%dz = x(1)*y(1)-B*z(1);
%z(2)= z(1)+dz*dt
for i = 1:n
    dx = sigma*(y(i)-x(i));
    x(i+1)= x(i)+dx*dt;
    dy = x(i)*(P-z(i))-y(i);
    y(i+1)= y(i)+dy*dt;
    dz = x(i)*y(i)-B*z(i);
    z(i+1)= z(i)+dz*dt;
end
%Animated plot with for loop
for i = 1:1000
    plot3(x(1:i), y(1:i), z(1:i));
    axis([-20 30 -20 30 0 60]);
    pause(0.01);
    grid;
end
