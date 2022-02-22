x = [0:0.01:1];
y = [0:0.01:1];
Py = y.^2 - y.^4;
Qx = x - x.^2;
N= 100;
for n = 1:N
b(n)= (2/sinh(n*pi*2))*(trapz(y,Py.*sin((n*pi*y))));
end
for n = 1:N
a(n) = (2/sinh((n*pi)/2))*(trapz(x,Qx.*sin((n*pi*x))));
end
ua = zeros(length(x),length(x));
ub = zeros(length(y),length(y));
for i=1:length(x)
for j=1:length(y)
for n1 = 1:N
ua(i,j) = ua(i,j) + (a(n1)*sin(n1*pi*x(i))*sinh(n1*pi*(y(j)/2)));
x2d(i,j) = x(i); y2d(i,j) = y(j);
end
end
end
for i=1:length(x)
for j=1:length(y)
for n1 =1:N
ub(i,j) = ub(i,j) + (b(n1)*sinh(2*n1*pi*x(i))*sin(n1*pi*(y(j))));
end
end
end

u= ua + ub;
[C,h] = contour(x2d,y2d,u,[-0.9:0.01:-0.1 0.1 0.1 0.1: 0.01:0.9]);
clabel(C,h,[-0.7 -0.3 0.3 0.7]);
xlabel('x');
ylabel('y');