alpha = [1,3,5,7];
t = (0:0.01:4);

for i=1:length(alpha)
    figure(i);
    u = @(t) 1.0.*(t>=0);
    sa = @(t) exp(-2)*exp(-alpha(i).*t).*cos(4*pi.*t).*u(t);
    plot(t,sa(t));
    af=alpha(i);
    xlabel('t');
    ylabel('sα(t)');
    title("Graph of sα(t) with alpha " + af);
    grid;
end



