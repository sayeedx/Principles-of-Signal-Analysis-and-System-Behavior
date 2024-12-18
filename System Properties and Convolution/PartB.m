% CH2MP4.m : Chapter 2, MATLAB Program 4
% Script M-file graphically demonstrates the convolution process.
figure(1) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) 1.5*sin(pi*t).*(u(t)-u(t-1));
h = @(t) 1.5*(u(t)-u(t-1.5))-u(t-2)+u(t-2.5);
dtau = 0.005; tau = -1:dtau:4;
ti = 0; tvec = -.25:.1:3.75;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory(ensures displays values of y(t) tht hav only been computated), Not a number values occur from 0-0 or inf to inf
for t = tvec,
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh); %length returns the length of the input vevtor
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral, sum of all the integrals
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok'); %partitions current figure window into a by b matrixof axes and selects axes c for use
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],... %create gray-shaded area
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]); %get and set used for to reorder plot objects so grey area does not obscure other lines
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau'); %\tau produces greek letter, u use \ for greek letters
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow; %update graphics for each loop iteration, program will not continue until key is pressed for pause command
%pause;
end