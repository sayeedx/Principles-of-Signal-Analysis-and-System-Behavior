%convolution for parts A, B, and H

u = @(t) 1.0*(t>=0);

% ===================== Part A =====================
figure(1)
A = 0.5; %constants a and b for part a
B = 1.0; 
xA = @(t) A*(u(t-4) - u(t-6));
hA = @(t) B*(u(t+5) - u(t+4));
dtau = 0.005; %time step & range for tau, part a
tau = -6:dtau:2.5;
ti = 0; %time vector for which y(t) will b computeted for part a
tvec = -5:.1:5;
yA = NaN*zeros(1,length(tvec));%pre-allocate memory for y(t) for part a

% Loop for convolution of Part A
for t = tvec
    ti = ti+1; %time index
    xhA = xA(t-tau).*hA(tau); %multiply x(t-tau) and h(tau)
    lxhA = length(xhA); %get the length of the convolution result
    yA(ti) = sum(xhA.*dtau); %approximate the convolution integral
    subplot(2,1,1),plot(tau,hA(tau),'k-',tau,xA(t-tau),'k--',t,0,'ok');%plot for part a
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
    [zeros(1,lxhA-1);xhA(1:end-1);xhA(2:end);zeros(1,lxhA-1)],...
    [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); 
    title('Part A: h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); 
    set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,yA,'k',tvec(ti),yA(ti),'ok');
    xlabel('t'); ylabel('y_A(t) = \int h_A(\tau)x_A(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); 
    grid;
    drawnow;
end

% ===================== Part B =====================
figure(2)
xB = @(t) A*(u(t-3) - u(t-5));
hB = @(t) B*(u(t+5) - u(t+3));
yB = NaN*zeros(1,length(tvec)); %pre-allocate memory for y(t) for part b
%Loop for convolution of part b
ti = 0;
for t = tvec
    ti = ti+1; %time index
    xhB = xB(t-tau).*hB(tau); %multiply x(t-tau) and h(tau)
    lxhB = length(xhB); %get the length of the convolution result
    yB(ti) = sum(xhB.*dtau); %approximate the convolution integral
    subplot(2,1,1),plot(tau,hB(tau),'k-',tau,xB(t-tau),'k--',t,0,'ok');%plot for part b
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
    [zeros(1,lxhB-1);xhB(1:end-1);xhB(2:end);zeros(1,lxhB-1)],...
    [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); 
    title('Part B: h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); 
    set(gca,'children',[c(2);c(3);c(4);c(1)]);
    
    subplot(2,1,2),plot(tvec,yB,'k',tvec(ti),yB(ti),'ok');
    xlabel('t'); ylabel('y_B(t) = \int h_B(\tau)x_B(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); 
    grid;
    drawnow;
end

% ===================== Part H =====================
figure(3)
xH = @(t) exp(t).*(u(t+2) - u(t));
hH = @(t) exp(-2*t).*(u(t) - u(t-1));
yH = NaN*zeros(1,length(tvec));%pre-allocate memory for y(t) for part h
%loop for convolution of for part h
ti = 0;
for t = tvec
    ti = ti+1; %time index
    xhH = xH(t-tau).*hH(tau); %multiply x(t-tau) and h(tau)
    lxhH = length(xhH); %get the length of the convolution result
    yH(ti) = sum(xhH.*dtau); %approximate the convolution integral
    subplot(2,1,1),plot(tau,hH(tau),'k-',tau,xH(t-tau),'k--',t,0,'ok'); %plot for for part h
    axis([tau(1) tau(end) -2.0 2.5]);
    patch([tau(1:end-1);tau(1:end-1);tau(2:end);tau(2:end)],...
    [zeros(1,lxhH-1);xhH(1:end-1);xhH(2:end);zeros(1,lxhH-1)],...
    [.8 .8 .8],'edgecolor','none');
    xlabel('\tau'); 
    title('Part H: h(\tau) [solid], x(t-\tau) [dashed], h(\tau)x(t-\tau) [gray]');
    c = get(gca,'children'); 
    set(gca,'children',[c(2);c(3);c(4);c(1)]);
    subplot(2,1,2),plot(tvec,yH,'k',tvec(ti),yH(ti),'ok');
    xlabel('t'); ylabel('y_H(t) = \int h_H(\tau)x_H(t-\tau) d\tau');
    axis([tau(1) tau(end) -1.0 2.0]); 
    grid;
    drawnow;
end
