%% Question 1

% Given data
x = [0:0.01:1];
y = [0:0.01:1];
py = sin(pi*(sqrt(y)));
px = 4*(x.^3 - x.^6);
N = 100;

% General Solution is u(x,y) = u1 + u2
% u1 = sum(n=1 to inf)An1*sin(n*pi*x)*sinh(n*pi*y)
% u2 = sum(n=1 to inf)An2*sin(n*pi*y)*sinh(n*pi*x)
% An1 = (2/sinh(n*pi))*integral(0,1)(4(x^3-x^6)*sin(n*pi*x))
% An2 = (2/sinh(n*pi))*integral(0,1)(sin(pi*sqrt*(y))*sin(n*pi*y))


%% Calculating An2 & An1
for n = 1:N
    An2(n) = (2/sinh(n*pi))*(trapz(y,py.*sin(n*pi*y)));
end
for n = 1:N
    An1(n) = (2/sinh(n*pi))*(trapz(x,px.*sin(n*pi*x)));
end

%% Splitting zeros u = u1 + u2, according to boundary conditions
u1 = zeros(length(x),length(x));
u2 = zeros(length(y),length(y));

%% Finding u1
for i = 1:length(x)
    for j = 1:length(y)
        for n1 = 1:N
            u1(i,j) = u1(i,j)+ (An1(n1)*sin(n1*pi*x(i))*sinh(n1*pi*y(j))); 
            x2d(i,j)=x(i); y2d(i,j)=y(j);
        end
    end
end

%% Finding u2
for i = 1:length(x)
    for j = 1:length(y)
        for n1 = 1:N
            u2(i,j) = u2(i,j) + (An2(n1)*sinh(n1*pi*x(i))*sin(n1*pi*y(j))); 
        end
    end
end
    
%% Plotting
u = u1 + u2;
[C h] = contour(x2d,y2d,u,[-2:0.05:2],'LineWidth',1);
colorbar
clabel(C,h,[-1.6:0.4:1.6]); 
xlabel('x'); 
ylabel('y');
title('Contour plot with an interval of 0.05');