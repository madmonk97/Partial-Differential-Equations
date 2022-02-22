% Nikhil Joshi, 1219967502

% Problem 4

x = [-3:0.005:3];
t1 = 0.3;
t2 = 1.0;
t3 = 0;

for n = 1:length(x)
    u1(n) = -x(n) + ((x(n)-sinh(t1)+cosh(t1))/cosh(t1))*exp(t1);
end

for n = 1:length(x)
    u2(n) = -x(n) + ((x(n)-sinh(t2)+cosh(t1))/cosh(t2))*exp(t2);
end

for n = 1:length(x)
    u3(n) = -x(n) + ((x(n)-sinh(t3)+cosh(t3))/cosh(t3))*exp(t3);
end

for n = 1:length(x)
    u4(n)= x(n);
end

% Plotting
hold on
plot(x,u1,'linewidth',2)
plot(x,u2,'linewidth',2)
plot(x,u3,'linewidth',2)
plot(x,u4,'linewidth',2)
xlabel('x');
ylabel('u');
title('Solution u(x,t) as a function of x at given times')
legend('u1 at t=0.3','u2 at t=1.0','u3 at t=0 (initial state)','u4 at t=inf (SteadySolution)','Location','best');
xlim([-3 3]);
hold off
