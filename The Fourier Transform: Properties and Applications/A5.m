clear;
%Define the original signal x(t)
N = 100;          
PulseWidth = 5; %changing to 5 
t = [0:1:(N-1)];  
x1 = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];  %pulse signal

%Define the frequency vector 'f'
f = [-(N/2):1:(N/2)-1] * (1/N);  %frequency vector ranging from -0.5 to 0.5

%Compute the Fourier Transform of x(t)
Xf1 = fft(x1);                %compute FFT of x(t) to get X(ω)

%Frequency Domain Plots of Pulsewidth=5
figure;
subplot(2, 1, 1);
plot(f, fftshift(abs(Xf1))); %Magnitude of Xf1 / pulsewidth=5
grid on;
title('Pulse width of 5 Magnitude Plot');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
subplot(2, 1, 2);
plot(f, fftshift(angle(Xf1))); %Phase of Xf1 / pulsewidth=5
grid on;
title('Pulse width of 5 Freq-Domain Phase Plot');
xlabel('Frequency (\omega)');
ylabel('Phase');

%Pulsewidth of 25 Plot
PulseWidth = 25; %changing to 25
x2 = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];  %pulse signal

%Compute the Fourier Transform of x(t)
Xf2 = fft(x2);                %compute FFT of x(t) to get X(ω)

%Frequency Domain Plots of Pulsewidth=25
figure;
subplot(2, 1, 1);
plot(f, fftshift(abs(Xf2))); %Magnitude of Xf1 / pulsewidth=25
grid on;
title('Pulse width of 25 Magnitude Plot');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
subplot(2, 1, 2);
plot(f, fftshift(angle(Xf2))); %Phase of Xf1 / pulsewidth=25
grid on;
title('Pulse width of 25 Freq-Domain Phase Plot');
xlabel('Frequency (\omega)');
ylabel('Phase');