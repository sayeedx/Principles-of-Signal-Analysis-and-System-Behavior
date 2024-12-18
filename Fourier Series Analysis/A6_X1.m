% A6 x1(t)
% This script reconstructs the time-domain signal x(t) from its Fourier coefficients.
% It displays a plot of the reconstructed signal x(t)
n = [-0.5,-0.1,0.1,0.5];
D_n = [1/2, 1/4, 1/2, 1/4];

t=[-300:1:300];
w=pi*0.1; % This w should be changed for x1, x2 and x3
x=zeros(size(t));
% This loop sums all Fourier coefficients
for i = 1:length(n)
 x=x+D_n(i)*exp(j*n(i)*w*t);
end

figure(5);
plot(t,x)
xlabel('t'); ylabel('x(t)');
axis([-300 300 -1 2]);
title('The Reconstructed Fourier Coefficients');
grid;
