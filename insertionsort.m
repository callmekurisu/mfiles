%generate random numbers
%rand(1,_) makes 1x_ array of random of numbers from 0 to 0.9
%multiply by 100 to get numbers from 0-100
%floor() round to nearest integer
clear;clc
input('PRess Enter to generate random numbers')

R = (rand(1,10)*100);
R = floor(R);
disp(R);

input('Press Enter to place in ascending order')

for i = 1:length(R)
    x = R(i);
    j = i;
    while j > 1 && R(j-1) > x;
      R(j) = R(j-1);
      j = j - 1;
    end
    R(j) = x;
end
disp(R);  
