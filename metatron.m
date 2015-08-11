clear; clc;
%pull these 13 circles from a genesis pattern
circle_plot(0,0,1);
circle_plot(0,2,1);
circle_plot(0,-2,1);
circle_plot(0,4,1);
circle_plot(0,-4,1);
circle_plot(1.72,1,1);
circle_plot(-1.72,1,1);
circle_plot(1.72,-1,1);
circle_plot(-1.72,-1,1);
circle_plot(-3.44,2,1);
circle_plot(-3.44,-2,1);
circle_plot(3.44,2,1);
circle_plot(3.44,-2,1);
% Connect lines to centers of every circle
x = [0 0 -3.44 3.44 -3.44 3.44 3.44 3.44 -3.44 -3.44 0 -3.44 0 3.44 0 ...
    3.44 0 3.44 -3.44 0 -1.72 -1.72 1.72 1.72 -1.72 1.72 -1.72 1.72 ...
    -1.72 0 -1.72 0 0 1.72 0 1.72 -3.44 3.44 -1.72 3.44 0 3.44 0 -3.44 ...
    0 1.72 0 -1.72 0 1.72 -3.44 1.72 -3.44 0 3.44 0 3.44 -1.72 ...
    0 -1.72 0 1.72];
y = [4 -4 -2 2 2 -2 2 -2 2 -2 4 2 4 2 -4 -2 4 -2 2 -4 1 -1 1 -1 1 1 -1 ...
    -1 -1 -2 1 2 2 1 -2 -1 -2 -2 -1 -2 2 -2 2 -2 -4 1 4 -1 4 -1 2 1 2 ...
    -2 2 -2 2 1 2 -1 2 -1];
plot(x,y);
