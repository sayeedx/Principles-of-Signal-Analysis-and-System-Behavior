figure;
u = @(t) 1.0.*(t>=0);
f = @(t) exp(-2*t).*cos(4*pi*t);
g = @(t) f(t).*u(t);
s = @(t) g(t+1);
t = (-2:0.01:4);

plot(t,s(t));
xlabel('t');
ylabel('s = @(t) g(t+1)');
title("Graph of s(t)");
grid;
