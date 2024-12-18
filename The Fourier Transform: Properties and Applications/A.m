N = 100; PulseWidth = 10;
t = [0:1:(N-1)];
x = [ones(1,PulseWidth), zeros(1,N-PulseWidth)];

stairs(t,x);
grid on;
axis([-10,110,-0.1,1.1])
Xf = fft(x);
%X(ω) = frequency vector 
f = [-(N/2):1:(N/2)-1]*(1/N);

% w=2*pi*f in generating the spectral plots
%fftshift to centre the double sided spectrum on the frequency origin
subplot(211); plot(f,fftshift( abs(Xf)));
grid on;
subplot(212); plot(f,fftshift(angle(Xf)));
grid on;

%convert back to domain
 xhat = ifft(Xf);

 