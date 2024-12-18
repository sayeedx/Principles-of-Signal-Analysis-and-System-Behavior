clear;
%Define the original signal x(t)
N = 100;          
PulseWidth = 10; %changing to 10 
t = [0:1:(N-1)];
f = (-(N/2):(N/2)-1)*(1/N); % Frequency vector
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];  %pulse signal

%positive side of e^j*pi/3*t
w_positive = x .* exp(1j * (pi/3) * t);
W_positive = fftshift(fft(w_positive));

%negative side of e^-j*pi/3*t
w_negative = x.*exp(-1j*(pi/3)*t);
W_negative = fftshift(fft(w_negative));

%x(t)*xos(pi/3*t)
wc = x.*cos((pi/3)*t);
W_c = fftshift(fft(wc));

%magnitude plot of positive side
figure;
subplot(3, 2, 1);
plot(f, abs(W_positive));
title('magnitude plot of positive side of e^j*pi/3*t');
xlabel('Frequency');
ylabel('Absolute of positive side |w_positive(f)|');
ylim([0, max(abs(W_positive)) + 2]);
%phase plot of positive side
subplot(3,2,2);
plot(f, angle(W_positive));
title('phase plot of positive side of e^j*pi/3*t');
xlabel('Frequency');
ylabel('Phase');
grid on;

%magnitude plot of negative side
subplot(3, 2, 3);
plot(f, abs(W_negative));
title('magnitude plot of negative side of e^-j*pi/3*t');
xlabel('Frequency');
ylabel('Absolute of negative side |w_negative(f)|');
ylim([0, max(abs(W_negative)) + 2]);
%phase plot of negative side
subplot(3,2,4);
plot(f, angle(W_negative));
title('phase plot of negative side of e^-j*pi/3*t');
xlabel('Frequency');
ylabel('Phase');
grid on;

%magnitude of Wc(f)
subplot(3,2,5);
plot(f, abs(W_c));
title('Magnitude plot of Wc');
xlabel('Frequency');
ylabel('Absolute of negative side |Wc(f)|');
grid on;
ylim([0, max(abs(W_c)) + 2]);
%phase of Wc(f)
subplot(3,2,6);
plot(f, angle(W_c));
title('Phase plot of Wc');
xlabel('Frequency');
ylabel('Phase');
grid on;



