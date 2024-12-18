u = @(t) 1.0.*(t>=0);             	%unit step function, returns 1 when t>=0

p = @(t) 1.0.*((t>=0)&(t<1));	    %pulse function return 1 when.. With & operator
t = (-1:0.01:2);
plot(t,p(t));
xlabel('t');
ylabel('p(t) = u(t)-u(t-1)');     	%difference between 2 units, one at t=0 and other at t=1
title("Graph of Fig 1.50");
axis([-1 2 -.1 1.1]);
grid;
