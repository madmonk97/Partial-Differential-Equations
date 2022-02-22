% HW3 - Question 2
dx = (2*pi)/1000;
x = [0:dx:2*pi];
N = 100;
U = [10,10,0];
K = [0,2.5,0];
B = [0,0,0.25];
p = ((1-cos(x)).^10)/1024;
c0 = trapz(x,p)/(2.*pi);
t = 0.1;

for n = 1:N
    cn0(n) = trapz(x,p.*exp(-1*i*n*x))/(2*pi); % Constant cn(0)
end
% Full solutions for different values of U, K and B are given by u1, u2, u3; ud and u4 represent full solution
% at t = 0
ua = 0*x;
ub = 0*x;
uc = 0*x;
ud = 0*x;

% case 1 - U = 10, K = 0, B = 0
for n = 1:N
    ua = ua + cn0(n)*exp(i*n*x + (U(1)*i*n - K(1)*n^2 - B(1)*i*n^3)*t);
end
u1 = 2*real(ua) + c0;

% case 2 - U = 10, K = 2.5, B = 0
for n = 1:N
    ub = ub + cn0(n)*exp(i*n*x + (U(2)*i*n - K(2)*n^2 - B(2)*i*n^3)*t);
end
u2 = 2*real(ub) + c0;

% case 3 - U = 0, K = 0, B = 0.25
for n = 1:N
    uc = uc + cn0(n)*exp(i*n*x + (U(3)*i*n - K(3)*n^2 - B(3)*i*n^3)*t);
end
u3 = 2*real(uc) + c0;

% t = 0
for n = 1:N
    ud = ud + cn0(n)*exp(i*n*x + (U(3)*i*n - K(3)*n^2 - B(3)*i*n^3)*0);
end
u4 = 2*real(ud) + c0;

% Plotting
hold on
plot(x,u1,'MarkerFaceColor','r','Linewidth',2)
plot(x,u2,'MarkerFaceColor','b','Linewidth',2)
plot(x,u3,'MarkerFaceColor','y','Linewidth',2)
plot(x,u4,'MarkerFaceColor','g','Linewidth',2)
legend('U = 10, K = 0, B = 0','U = 10, K = 2.5, B = 0','U = 0, K = 0, B = 0.25','u(x,o)','Location','NorthEast')
xlabel('x')
ylabel('u(x,t)')
hold off