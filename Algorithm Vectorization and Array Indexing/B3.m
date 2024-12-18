p = @(t) 1.0.*((t>=0)&(t<1));		%pulse function
t = (-3:0.01:3);				
r = @(t) t.*p(t);				    %r function, scales p(t) by value of t
n = @(t) r(t) + r(-t + 2);			
t = (-3:0.01:5);
n1 = @(t) n(0.5 * t);			
n2 = @(t) n1(t + 0.5);
figure
plot(t, n1(t), '-k', t, n2(t), '-k');  %plots 2 function, n1(t) plotted with solid line, n2 is  
                                       %dotted black line
xlabel('t');
ylabel('n_1(t) & n_2(t)');
axis([-5 5 0 1]);				       %increasing axis for better view
grid;
