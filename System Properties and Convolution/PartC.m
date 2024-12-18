clc 
clear 

%PART C1
u = @(t) 1.0.*(t>=0);
t = (-1:0.001:5);
h1 = @(t) exp((1/5)*t).*u(t);
h2 = @(t) 4*exp((-1/5)*t).*u(t);
h3 = @(t) 4*exp(-t).*u(t);
h4 = @(t) 4*(exp((-1/5)*t)-exp(-t)).*u(t);

figure(1)
plot(t,h1(t),'b');
xlabel('t'); ylabel('h1(t)'); title('Plot of h1(t)'); grid;
hold on; 

plot(t,h2(t),'r');
plot(t,h3(t),'g');
plot(t,h4(t),'k');

legend('h1(t)','h2(t)','h3(t)','h4(t)');
hold off;

%PART C3 
% CH2MP4.m : Chapter 2, MATLAB Program 4
% Script M-file graphically demonstrates the convolution process.

%for h1(t)
figure(2) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) sin(5*t).*(u(t)-u(t-3));
h = @(t) exp((1/5)*t).*(u(t)-u(t-20)); %adding -u(t-20) to the existing u(t) part makes it so that the response function starts at t=0 and ends at t=20 

dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

%for h2(t) 
figure(3) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) sin(5*t).*(u(t)-u(t-3));
h = @(t) 4*exp((-1/5)*t).*(u(t)-u(t-20)); %adding -u(t-20) to the existing u(t) part makes it so that the response function starts at t=0 and ends at t=20 

dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

%for h3(t)
figure(4) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) sin(5*t).*(u(t)-u(t-3));
h = @(t) 4*exp(-t).*(u(t)-u(t-20)); %adding -u(t-20) to the existing u(t) part makes it so that the response function starts at t=0 and ends at t=20 

dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end

%for h4(t)
figure(5) % Create figure window and make visible on screen
u = @(t) 1.0*(t>=0);
x = @(t) sin(5*t).*(u(t)-u(t-3));
h = @(t) 4*(exp((-1/5)*t)-exp(-t)).*(u(t)-u(t-20)); %adding -u(t-20) to the existing u(t) part makes it so that the response function starts at t=0 and ends at t=20 

dtau = 0.005; tau = 0:dtau:20;
ti = 0; tvec = 0:0.1:20;
y = NaN*zeros(1,length(tvec)); % Pre-allocate memory
for t = tvec
ti = ti+1; % Time index
xh = x(t-tau).*h(tau); lxh = length(xh);
y(ti) = sum(xh.*dtau); % Trapezoidal approximation of convolution integral
subplot(2,1,1),plot(tau,h(tau),'k-',tau,x(t-tau),'k--',t,0,'ok');
axis([tau(1) tau(end) -2.0 2.5]);
patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
[zeros(1,lxh-1);xh(1:end-1);xh(2:end);zeros(1,lxh-1)],...
[.8 .8 .8],'edgecolor','none');
xlabel('\tau'); title('h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
c = get(gca,'children'); set(gca,'children',[c(2);c(3);c(4);c(1)]);
subplot(2,1,2),plot(tvec,y,'k',tvec(ti),y(ti),'ok');
xlabel('t'); ylabel('y(t) = \int h(\tau)x(t-\tau) d\tau');
axis([tau(1) tau(end) -1.0 2.0]); grid;
drawnow;
end
