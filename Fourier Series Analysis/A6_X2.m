% A6 x2(t)
% This script reconstructs the time-domain signal x(t) from its Fourier coefficients.
% It displays a plot of the reconstructed signal x(t)
n = -500:500;
D_n(n == 0) = 0.5;
D_n(n ~= 0) = sin(pi/2 .* n(n ~= 0)) ./ (pi .* n(n ~= 0));

t = 0:1:40; % Adjusted to cover two periods
w = pi * 0.1;
x = zeros(size(t));

% This loop sums all Fourier coefficients
for i = 1:length(n)
    x = x + D_n(i) * exp(1j * n(i) * w * t);
end

figure(5);
plot(t, x)
xlabel('t');
ylabel('x(t)');
title('The Reconstructed Fourier Coefficients');
axis([0 40 -0.5 1.5]); % Adjusted axis limits to cover two periods
grid on;