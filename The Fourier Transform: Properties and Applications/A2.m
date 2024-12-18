clear;
%PART A2%
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

%PART A3%
%magnitude of Z(ω)
figure;
subplot(2, 1, 1);            %for magnitude
plot(f, fftshift(abs(Zf)));  %magnitude of Z(ω) after shifting zero frequency
title('Magnitude of Z(\omega)'); 
xlabel('Frequency (\omega)');   
ylabel('Magnitude');           
grid on;                      

%phase of Z(ω)
subplot(2, 1, 2);             %for phase
plot(f, fftshift(angle(Zf))); %plot phase of Z(ω) after shifting zero frequency
title('Phase of Z(\omega)'); 
xlabel('Frequency (\omega)'); 
ylabel('Phase (radians)');     
grid on;                      