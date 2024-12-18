load('Lab4_Data.mat');
%Plot the magnitude
figure;
subplot(2, 3, 1);
MagSpect(xspeech);
title('Magnitude of xspeech');
subplot(2, 3, 2);
MagSpect(hLPF2000);
title('Magnitude of hLPF2000');
subplot(2, 3, 3);
MagSpect(hLPF2500);
title('Magnitude of hLPF2500');
subplot(2, 3, 4);
MagSpect(hChannel);
title('Magnitude of hChannel');
%Encoder
filtered_speech = conv(xspeech, hLPF2500, 'same'); % The speech signal is filtered
%to limit its bandwidth to 2.5 kHz
%Generates a  carrier wave for modulation
Fc = 5000; %This is the lower carrier frequency (5 kHz)
carrier_wave = osc(Fc, length(filtered_speech), 32000);
%Plot Carrier Wave signal
figure(1); 
subplot(2, 3, 5);
MagSpect(carrier_wave);
title('Carrier Wave Signal');
%Now we modulate the speech signal
modulated_signal = filtered_speech .* carrier_wave;
%Plot Modulated signal
figure(2); 
subplot(2, 2, 1);
MagSpect(modulated_signal);
title('Modulated Signal');
%Simulate transmission through the channel
transmitted_signal = conv(modulated_signal, hChannel, 'same');
%Plot Transmitted signal
figure(2); 
subplot(2, 2, 2);
MagSpect(transmitted_signal);
title('Transmitted Signal');
%Decoder
demodulated_signal = transmitted_signal .* carrier_wave; %Demodulate the signal
%Plot demodulation signal
figure(2); 
subplot(2, 2, 3);
MagSpect(demodulated_signal);
title('Demodulated Signal');
%hLPF2000 is used to filter the demodulated signal and to recover the speech signal
recovered_speech = conv(demodulated_signal, hLPF2000, 'same');
%Normalize the recovered speech signal
recovered_speech = (recovered_speech - min(recovered_speech)) / (max(recovered_speech) - min(recovered_speech)) * 2 - 1;
%Avoids clipping by ensuring values are in the range of (-1 to 1)
recovered_speech = max(min(recovered_speech, 1), -1);
%Plot recovered signal
figure(2);
subplot(2, 2, 4);
MagSpect(recovered_speech);
title('Recovered Signal');
%playback
disp('Playing original speech signal...'); %playing original signal / speech
soundsc(xspeech, 32000);
pause(3); %3 second delay
disp('Playing recovered speech signal...'); %playing recovered signal / speech
soundsc(recovered_speech, 32000);
