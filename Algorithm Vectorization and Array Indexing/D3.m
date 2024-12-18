compressed_audio = x_audio;		%copying data array x_audio into another 
                                %workingarray

threshold = 0.01;				%set a threshold for compression

zero_count=0;                   %initializing zero_count

for i=1:length(compressed_audio)
    if abs(compressed_audio(i)) < threshold
        compressed_audio(i)=0;      %set value to zero if below threshold
        zero_count=zero_count+1;    %increment to count change in element for zero
    end
end

fprintf('The number of elements that are set to zero: %d\n', zero_count);
                                %display the number of elements set to zero

sound(compressed_audio, 8000);  %play the sound at 8000 Hz sample rate
                                %play the compressed audio
