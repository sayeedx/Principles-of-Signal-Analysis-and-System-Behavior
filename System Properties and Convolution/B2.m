%convolution using the given x(t) and h(t)
figure(1) %making screen visible

u = @(t) 1.0*(t>=0);
x = @(t) u(t) - u(t-2);
h = @(t) (t+1).*(u(t+1)-u(t));
dtau = 0.005; %set time step & range for tau
tau = -1:dtau:4;
ti = 0; %time vector for which y(t) will be computed
tvec = -.25:.1:3.75;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory for y(t)

for t = tvec %loop over each time instance in tvec to compute the convolution
    ti = ti+1; %time index
    xh = x(t-tau).*h(tau); % Multiply x(t-tau) and h(tau)
    lxh = length(xh); % Get the length of the convolution result
    y(ti) = sum(xh.*dtau); % Approximate the convolution integral
    subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); %plotting h(tau), x(t-tau), and the convolution result at each step
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... %creating shaded area to represent convolution
    [zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
    [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); 
    title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); %reorder plot objects so that the shaded area does not obscure the lines
    set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok'); %convolution result of y(t)
    xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); 
    grid;

    drawnow;%graphics of each iteration
end
