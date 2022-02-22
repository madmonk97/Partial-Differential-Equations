%% Question 1 Part (a)

clear
close all
dxa = 0.001;
x   = [0:dxa:1];

% P(x) = x^5-3*x^3+2*x^2+sin(pi*x)^8
% for full solution 
% -> u(x,t) = a0 + sum(an*cos(n*pi*x)*exp(-(n*pi)^2*t)),
% sum goes from n = 1 to infinity, a0 = integral(P(x))dx, intergral limits (0,1)
% an = 2*integral(P(x)*cos(n*pi*x)dx), integral limits - (0,1)

px = x.^5-3*x.^3+2*x.^2+sin(pi*x).^8;
N  = 100;
% let a0 = b
    for n = 1:N+1
        b(n) = trapz(x,px);
    end
    for n = 1:N
        a(n) = 2*trapz(x,px.*cos(n*pi*x));
    end

t  = [0 0.005 0.02 0.1];
u1a = 0*x;
u2a = 0*x;
u3a = 0*x;
u4a = 0*x;

%t = 0
for n=1:N
u1a = u1a + (a(n)*cos(n*pi*x)*exp(-((n*pi)^2)*t(1)));
end
%t = 0.005
for n=1:N
u2a = u2a + (a(n)*cos(n*pi*x)*exp(-((n*pi)^2)*t(2)));
end
%t = 0.02
for n=1:N
u3a = u3a + (a(n)*cos(n*pi*x)*exp(-((n*pi)^2)*t(3)));
end
%t = 0.1
for n=1:N
u4a = u4a + (a(n)*cos(n*pi*x)*exp(-((n*pi)^2)*t(4)));
end
% u1 = u1 + b;
% u2 = u2 + b;
% u3 = u3 + b;
% u4 = u4 + b;
hold on
plot(x,u1a, 'MarkerFaceColor', 'r','Linewidth',2);
plot(x,u2a, 'MarkerFaceColor', 'b','Linewidth',2);
plot(x,u3a, 'MarkerFaceColor', 'y','Linewidth',2);
plot(x,u4a, 'MarkerFaceColor', 'g','Linewidth',2);
legend('t = 0','t=0.005','t=0.02','t=0.1', 'Location', 'NorthEast')
title('HW-1-Q1-(a)')
hold off


%% Question 1 Part (b)

clear
close all
dxb = 0.001;
x   = [0:dxb:1];

% P(x) = x^5-3*x^3+2*x^2+sin(pi*x)^8
% for full solution 
% -> u(x,t) = sum(an*cos(((2*n+1)/2)*pi*x)*exp(-(((2*n+1)/2)*pi)^2*t)),
% sum goes from n = 1 to infinity
% an = 2*integral(P(x)*cos(((2*n+1)/2)*pi*x)dx, integral limits - (0,1)

px = x.^5-3*x.^3+2*x.^2+sin(pi*x).^8;
N  = 100;
    for n = 1:N
        a(n) = 2*trapz(x,px.*cos((((2*n+1)*pi*x)/2)));
    end

t  = [0 0.005 0.02 0.1];
u1b = 0*x;
u2b = 0*x;
u3b = 0*x;
u4b = 0*x;

%t = 0
for n=1:N
u1b = u1b + (a(n)*cos(((2*n+1)/2)*pi*x)*exp(-((n*pi)^2)*t(1)));
end
%t = 0.005
for n=1:N
u2b = u2b + (a(n)*cos(((2*n+1)/2)*pi*x)*exp(-((n*pi)^2)*t(2)));
end
%t = 0.02
for n=1:N
u3b = u3b + (a(n)*cos(((2*n+1)/2)*pi*x)*exp(-((n*pi)^2)*t(3)));
end
%t = 0.1
for n=1:N
u4b = u4b + (a(n)*cos(((2*n+1)/2)*pi*x)*exp(-((n*pi)^2)*t(4)));
end

hold on
plot(x,u1b, 'MarkerFaceColor', 'r','Linewidth',2);
plot(x,u2b, 'MarkerFaceColor', 'b','Linewidth',2);
plot(x,u3b, 'MarkerFaceColor', 'y','Linewidth',2);
plot(x,u4b, 'MarkerFaceColor', 'g','Linewidth',2);
legend('t = 0','t=0.005','t=0.02','t=0.1', 'Location', 'NorthEast')
title('HW-1-Q1-(b)')
hold off


%% Question 1 Part (c)

clear
close all
dxc = 0.001;
x   = [0:dxc:1];

% P(x) = x^5-3*x^3+2*x^2+sin(pi*x)^8
% for full solution 
% -> u(x,t) = sum(an*sin(n*pi*x)*exp(-(n*pi)^2*t)),
% sum goes from n = 1 to infinity
% an = 2*integral(P(x)*sin(n*pi*x)dx, integral limits - (0,1)

px = x.^5-3*x.^3+2*x.^2+sin(pi*x).^8;
N  = 100;
    for n = 1:N
        a(n) = 2*trapz(x,px.*sin(n*pi*x));
    end

t  = [0 0.005 0.02 0.1];
u1c = 0*x;
u2c = 0*x;
u3c = 0*x;
u4c = 0*x;

%t = 0
for n=1:N
u1c = u1c + (a(n)*sin(n*pi*x)*exp(-((n*pi)^2)*t(1)));
end
%t = 0.005
for n=1:N
u2c = u2c + (a(n)*sin(n*pi*x)*exp(-((n*pi)^2)*t(2)));
end
%t = 0.02
for n=1:N
u3c = u3c + (a(n)*sin(n*pi*x)*exp(-((n*pi)^2)*t(3)));
end
%t = 0.1
for n=1:N
u4c = u4c + (a(n)*sin(n*pi*x)*exp(-((n*pi)^2)*t(4)));
end

hold on
plot(x,u1c, 'MarkerFaceColor', 'r','Linewidth',2);
plot(x,u2c, 'MarkerFaceColor', 'b','Linewidth',2);
plot(x,u3c, 'MarkerFaceColor', 'y','Linewidth',2);
plot(x,u4c, 'MarkerFaceColor', 'g','Linewidth',2);
legend('t = 0','t=0.005','t=0.02','t=0.1', 'Location', 'NorthEast')
title('HW-1-Q1-(c)')
hold off



%% Question 2
clc;
clear; close all;

% Domain
dx = 0.001;
x  = 0:dx:1;
n  = 2;      % for problem solution

u1 = 0*x;
u2 = 0*x;
u3 = 0*x;
u4 = 0*x;

u_ss = 0*x; % Steady State Solution
t    = [0,0.01,0.03,0.07,5000];

% at u(x,0) let u(x,0)=d
d = cos(pi*x)+cos(2*pi*x);

% t = 0
u1 = (cos(pi*x)+cos(2*pi*x))*exp(log(1+t(1))*(-(3*pi^2)));

% t = .01
u2 = (cos(pi*x)+cos(2*pi*x))*exp(log(1+t(2))*(-(3*pi^2)));

% t = .02
u3 = (cos(pi*x)+cos(2*pi*x))*exp(log(1+t(3))*(-(3*pi^2)));

% t = 0.04
u4 = (cos(pi*x)+cos(2*pi*x))*exp(log(1+t(4))*(-(3*pi^2)));

% t = infinity
u_ss = (cos(pi*x)+cos(2*pi*x))*exp(log(1+t(5))*(-(3*pi^2)));

% plotting
clf
figure(1)
plot(x,d,'MarkerFaceColor','black','linewidth',1);
xlabel('x'); ylabel('u(x)')
legend('u(x,0)','Location','Northeast');
title('HW-1-Q2-plot1')
% Time intervals
figure(2)
hold on
plot(x,u1,'MarkerFaceColor','red','linewidth',1)
plot(x,u2,'MarkerFaceColor','blue','linewidth',1)
plot(x,u3,'MarkerFaceColor','green','linewidth',1)
plot(x,u4,'MarkerFaceColor','cyan','linewidth',1)
plot(x,u_ss,'MarkerFaceColor','yellow','linewidth',1)
legend('t=0','t=0.01','t=0.02','t=0.04','t=infinity','Location','Northeast')
xlabel('x');ylabel('u(x)');
title('HW-1-Q2-plot2')
hold off
