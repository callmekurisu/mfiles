%Plot 1000 paths with 100 steps per path, head or tails
clear;clc;
M=1000;
N=100;
x= zeros(M,N);

for i = 1:99;
    for j = 1:999;
        p(i) = round(rand(1));
        if p(i) > 2/3; %Heads go North
            x(j,i+1) = x(j,i) +1;
        else %Tails go South
            x(j,i+1) = x(j,i)-1;
        end
    end
end

% for i = 1:N;
%     plot(x(i,:));
%     title('Random Walk Fair Coin');
%     hold on;
% end
 for i = 1:10
     for j = i*10
   subplot(5,2,i);
   hist(x(:,j))
   title('Histograms')
   axis([-40 40 0 400]);
     end
 end

figure;
s=mean(x);
r=1:100;
plot(r,s);

figure;
sigma=std(x);
plot(r,sigma)
