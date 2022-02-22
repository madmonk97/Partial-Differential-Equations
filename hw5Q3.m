% Problem 3

x = [-1:0.005:3];
t1 = 0.4;
t2 = 0.8;
t3 = 0;

for n = 1:length(x)
    
    if x(n)< (0.5*t1)
        u1(n)=0;
    end
    
    if (0.5*t1) <= x(n)|| x(n) >= 2 + (0.5*t1) - (exp(-t1))
        u1(n) = ((((-1+sqrt(1-4*(1-(exp(-t1)))*(0.5*t1-x(n))))/(2*(1-(exp(-t1)))))^2)*(exp(-t1)));
    end
    
    if x(n)> 2 + (0.5*t1) - (exp(-t1))
        u1(n)=(exp(-t1));
    end
    
    if x(n)< (0.5*t2)
        u2(n)=0;
    end
    
    if (0.5*t2) <= x(n)|| x(n) >= 2 + (0.5*t2) - (exp(-t2))
        u2(n) = ((((-1+sqrt(1-4*(1-(exp(-t2)))*(0.5*t2-x(n))))/(2*(1-(exp(-t2)))))^2)*(exp(-t2)));
    end
    
    if x(n)> 2 + (0.5*t2) - (exp(-t2))
        u2(n)=(exp(-t2));
    end
    
    if x(n)< 0
        u3(n)=0;
    end
    
    if 0 <= x(n)|| x(n) >= 1
        u3(n) = x(n)^2;
    end
    
    if x(n)> 1
        u3(n)=1;
    end
end

% Plotting
hold on
plot(x,u1,'linewidth',2);
plot(x,u2,'linewidth',2);
plot(x,u3,'linewidth',2);
xlim([-1 3]);
xlabel('x');
ylabel('u');
title('Solution u(x,t) as a function of x at given time t')
legend('u(x,t) at t=0.4','u(x,t) at t=0.8','u(x,t) at t=0','Location','northeast');
hold off
