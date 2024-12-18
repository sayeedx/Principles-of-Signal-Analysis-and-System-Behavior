p = @(t) 1.0.*((t>=0)&(t<1));		%pulse function			
r = @(t) t.*p(t);				    %r function, scales p(t) by value of t
n = @(t) r(t) + r(-t + 2);			
t = (-3:0.01:5);
n3 = @(t) n(t + 0.25);
n4 = @(t) n3(0.5 * t);
figure;
plot(t, n3(t), '-k', t, n4(t), '-k');
xlabel('t');
ylabel('n_3(t) & n_4(t)');
grid;
