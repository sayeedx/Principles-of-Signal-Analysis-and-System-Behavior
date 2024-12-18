p = @(t) 1.0.*((t>=0)&(t<1));        %setting p(t) as before
t = (-3:0.01:3);				     %increasing interval to see more
r = @(t) t.*p(t);				     %r(t) function
n = @(t) r(t) + r(-t + 2);			 %n(t) function
figure;					             %just taking out the figure to start plotting
plot(t, r(t));					     %r(t) figure
xlabel('t');
ylabel('r(t) = t*p(t)');
grid;
figure;
plot(t, n(t));					     %n(t) figure
xlabel('t');
ylabel('n(t) = r(t) + r(-t+2)');
grid;