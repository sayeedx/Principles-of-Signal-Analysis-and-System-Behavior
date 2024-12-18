clear;
%Define the original signal x(t)
N = 100;          
PulseWidth = 10;  
t = [0:1:(N-1)];  
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];  %pulse signal

%Define the frequency vector 'f'
f = [-(N/2):1:(N/2)-1] * (1/N);  %frequency vector ranging from -0.5 to 0.5

%Compute the Fourier Transform of x(t)
Xf = fft(x);                %compute FFT of x(t) to get X(ω)

%Compute Z(ω) as the square of X(ω)
Zf = Xf .* Xf;              %element-wise multiplication to square X(ω)

z_time = ifft(Zf); %Inverse Fourier Transform of Z(f) to get z(t)

%Time-Domain Plots
figure;
plot(z_time);
grid on;
title('z(t) = x(t)*x(t)');
xlabel('Time');
ylabel('z(t)');
ylim([0, max(z_time) + 2]);

%Frequency Domain Plots
figure;
subplot(2, 1, 1);
plot(f, fftshift(abs(Zf))); %Magnitude of Z(f)
grid on;
title('Freq-Domain of Z(f)');
xlabel('Frequency (\omega)');
ylabel('Magnitude');
ylim([0, max(Zf) + 10]);
subplot(2, 1, 2);
plot(f, fftshift(angle(Zf))); %Phase of Z(f)
grid on;
title('Freq-Domain Phase Spectra of Z(f)');
xlabel('Frequency (\omega)');
ylabel('Phase');
