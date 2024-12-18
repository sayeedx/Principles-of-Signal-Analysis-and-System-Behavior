clear;
% Step 1: Define the original signal x(t)
N = 100;          % Length of the signal
PulseWidth = 10;  % Width of the pulse (in samples)
t = 0:(N-1);  % Time vector
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];  % Pulse signal

% Step 2: Convolve the signal with itself to get z(t)
plot (conv(x, x));  % Convolve x(t) with x(t), using 'same' to keep the same length as x

title('z(t)=x(t)*x(t)');
xlabel('Time');
ylabel('z(t)');
grid on;
ylim([0, max(x) + 10]);
