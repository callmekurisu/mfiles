%This calculator will determine the feasibility of a project soley based on NPV 
%Additional analysis is advised
%Author: Nigel Christian
%September 28, 2015
%www.github.com/callmekurisu
%callmekurisu@gmail.com 

clear; clc;
printf('NPV CALCULATOR\n');
printf('\n');

printf('Enter dollars values and omit commas\n');

II = input('Enter the initial investment  $');
CF = input('Enter min. amount of expected cash flow per year $');
E = input('Enter the market value of equity $');
D = input('Enter the market value of debt $');
V = E + D;
RC = input('Enter the corporate tax rate in decimal form ');
RE = input('Enter the cost of equity in decimal format ');
RD = input('Enter the cost of debt in decimal format ');
n = input('Enter the period of returns in years ');

WACC = ((E/V *RE) + (D/V * (RD * (1-RC))))

y = 0;
for i = 1:n; 
  x = (CF/((1+WACC)^i));
  y = y + x;
end

NPV = y - II;
printf('NPV = $%8.2f\n', NPV)

if NPV > 0
  printf('This project has a positive NPV, investment authorized\n')
end

if NPV < 0
  printf('This project has a negative NPV, investment denied\n')
end

if NPV = 0
  printf('Investment on this project requires further analysis, on hold\n')
end
