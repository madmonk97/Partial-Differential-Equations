% HW3 - Question 1 Part a
x = [0:0.01:1];
N = 100;
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
%t = 0
for n=1:N
ua = ua + an(n)*sin(n*pi*x)*cos(n*pi*t(1)); 
end
%t = 0.3
for n=1:N
ub = ub + an(n)*sin(n*pi*x)*cos(n*pi*t(2)); 
end
%t = 0.5
for n=1:N
uc = uc + an(n)*sin(n*pi*x)*cos(n*pi*t(3)); 
end
%t = 0.7
for n=1:N
ud = ud + an(n)*sin(n*pi*x)*cos(n*pi*t(4)); 
end
%t = 1
for n=1:N
ue = ue + an(n)*sin(n*pi*x)*cos(n*pi*t(5)); 
end
%t = 1.8
for n=1:N
uf = uf + an(n)*sin(n*pi*x)*cos(n*pi*t(6)); 
end
% Plotting
hold on
plot(x,ua,'r','Linewidth',1.5);
plot(x,ub,'m','Linewidth',1.5);
plot(x,uc,'g','Linewidth',1.5);
plot(x,ud,'b','Linewidth',1.5);
plot(x,ue,'y','Linewidth',1.5);
plot(x,uf,'k','Linewidth',1.5);
legend('t = 0','t=0.3','t=0.5','t=0.7','t=1','t=1.8', 'Location', 'NorthEast')
xlabel('x');ylabel('u(x,t)')
title('Q1(a) - Solution as a function of x at given t values')
hold off