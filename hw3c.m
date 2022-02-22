%% PROBLEM 1A
clc
close all
x   = [0:0.01:1];
N  = 100;

for n = 1:N
   an(n) = 8*(sin((n*pi/4)))/(n^2*pi^2);
end

t  = [0 0.3 0.5 0.7 1 1.8];
ua = 0*x;
ub = 0*x;
uc = 0*x;
ud = 0*x;
ue = 0*x;
uf = 0*x;

for n=1:N %t=0
ua = ua + an(n)*sin(n*pi*x)*cos(n*pi*t(1)); 
end
for n=1:N %t=0.3
ub = ub + an(n)*sin(n*pi*x)*cos(n*pi*t(2)); 
end
for n=1:N %t=0.5
uc = uc + an(n)*sin(n*pi*x)*cos(n*pi*t(3)); 
end
for n=1:N %t=0.7
ud = ud + an(n)*sin(n*pi*x)*cos(n*pi*t(4)); 
end
for n=1:N %t=1
ue = ue + an(n)*sin(n*pi*x)*cos(n*pi*t(5)); 
end
for n=1:N %t=1.8
uf = uf + an(n)*sin(n*pi*x)*cos(n*pi*t(6)); 
end


hold on
plot(x,ua,'k','Linewidth',1);
plot(x,ub,'b','Linewidth',1);
plot(x,uc,'y','Linewidth',1);
plot(x,ud,'r','Linewidth',1);
plot(x,ue,'m','Linewidth',1);
plot(x,uf,'g','Linewidth',1);
legend('t=0','t=0.3','t=0.5','t=0.7','t=1','t=1.8', 'Location', 'NorthEast')
title('HW3-PROBLEM 1A')
hold off

%% HW3 - Question 1 Part a
clc
close all
x   = [0:0.01:1];
N  = 100;
z = 50;
for n = 30:z
   an(n) = exp(-((n-40)/4)^2);
end

t  = [0 0.5 1 1.5];
ua = 0*x;
ub = 0*x;
uc = 0*x;
ud = 0*x;

for n=1:N %t=0
ua = ua + an(n)*sin(n*pi*x)*cos(n*pi*t(1)); 
end
for n=1:N %t=0.5
ub = ub + an(n)*sin(n*pi*x)*cos(n*pi*t(2)); 
end
for n=1:N %t=1
uc = uc + an(n)*sin(n*pi*x)*cos(n*pi*t(3)); 
end
for n=1:N %t=1.5
ud = ud + an(n)*sin(n*pi*x)*cos(n*pi*t(4)); 
end

hold on
plot(x,ua,'k','Linewidth',1.5);
plot(x,ub,'b','Linewidth',1.5);
plot(x,uc,'g','Linewidth',1.5);
plot(x,ud,'r','Linewidth',1.5);
legend('t=0','t=0.5','t=1','t=1.5', 'Location', 'NorthEast')
title('Q1(b) - Solution as a function of x at given t values')
hold off