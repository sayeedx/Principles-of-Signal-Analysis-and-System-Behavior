% Part A5
n = -500:500;
t = -300:1:300;
w = pi*0.1; %This value will be change based on the w0 of the wanted function
x = zeros(size(t));
for i = 1: length(n)
   x = x + D_n(i)*exp(j * n(i) * w * t);
   't';
end
plot(t,x,'k');
xlabel('t(sec');
ylabel('x(t)');
axis([-300 300 -1 2]);
title('The Reconstructed Fourier Coefficients');