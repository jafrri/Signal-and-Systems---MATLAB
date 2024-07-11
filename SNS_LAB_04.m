% SNS LAB 04

% TASK 1
% x = [2 2 4 5];
% y = [4 5 4 0];
% z = [1 2];
% a = [10];
% [r,k] = xcorr(a,z)
% % subplot(3,1,1)
% stem(x)
% title("Plot of x versus lag");
% ylabel("x");
% subplot(3,1,2)
% stem(y)
% title("Plot of y versus lag");
% ylabel("y");
% subplot(3,1,3)
% stem(k,r)
% title("Plot of r versus lag");
% xlabel("k");
% ylabel("Correlation");


% TASK 2
% 
% x = [3 4 5 8];
% [r,k] = xcorr(x,x);
% s = length(k) - length(x);
% z = zeros(1,s);
% x1 = [x z];
% subplot(2,1,1)
% stem(k,x1)
% title("Plot for x[n] versus lag")
% xlabel("k")
% ylabel("x")
% subplot(2,1,2)
% stem(k,r)
% title("Plot for Correlation versus lag")
% xlabel("k")
% ylabel("Correlation")

% TASK 3
% 
% [y , Fs_y] = audioread('speech_segment.wav'); % segment of signal we want to
% %search
% [x , Fs_x] = audioread('speech.wav'); % complete signal or speech
% %sound(y, Fs_y) % sends the signal in vector y (with sample frequency Fs_y)
% %to the speaker on PC
% %pause(2) %to insert a pause of 2 seconds between the two audio files
% %sound(x, Fs_x)
% 
% [correlation , lag] = xcorr(x,y); % Correlation is obtained
% cmax = max((correlation)); % Finding maximum value
% Nonlinear_Effect = (1.1* correlation/cmax).^3 ;
% plot(lag,Nonlinear_Effect)
% title("Plot for the unnormalized correlated output of speech versus Lag")
% xlabel("Lag")
% ylabel("Correlated output")
% % subplot (3,1,1)
% plot(x) %We are not specifying the time-axis since it is a large vector
% title("Plot for the speech signal")
% ylabel("Speech signal")
% subplot (3,1,2)
% plot(y)
% title("Plot for the speech segment")
% ylabel("Speech segment")
% subplot (3,1,3)
% plot(lag,Nonlinear_Effect)
% title("Plot for the correlated output of speech versus Lag")
% xlabel("Lag")
% ylabel("Correlated output")





% % [y , Fs_y] = audioread('speech_segment.wav'); % segment of signal we want to
% % search
% % [x , Fs_x] = audioread('speech.wav'); % complete signal or speech
% % sound(y, Fs_y) % sends the signal in vector y (with sample frequency Fs_y)
% % to the speaker on PC
% % pause(2) %to insert a pause of 2 seconds between the two audio files
% % sound(x, Fs_x)
% % 
% % [correlation , lag] = xcorr(x,y); % Correlation is obtained
% % [cmax,index] = max(abs(correlation)); % Finding maximum value
% % Nonlinear_Effect = (1.1* correlation/cmax).^3 ;
% % location=lag(index)
% % sound(x(location:end),Fs_x);


% % Task 4
% [y , Fs_y] = audioread('speech_segment.wav'); % segment of signal we want to
% %search
% [x , Fs_x] = audioread('speech.wav'); % complete signal or speech
% %sound(y, Fs_y) % sends the signal in vector y (with sample frequency Fs_y)
% %to the speaker on PC
% %pause(2) %to insert a pause of 2 seconds between the two audio files
% %sound(x, Fs_x)
% x_noise  = randn(size(x));
% x_new = x + (x_noise / 100);
% sound(x_new,Fs_x)
% subplot(3,1,1)
% plot(x) %We are not specifying the time-axis since it is a large vector
% title("Plot for Original Signal")
% ylabel("Amplitude")
% subplot(3,1,2)
% plot(x_new)
% title("Plot for noisy signal")
% ylabel("Amplitude")
% [Correlation,Lag] = xcorr(x,x_new);
% subplot(3,1,3)
% plot(Lag,Correlation)
% title("Plot for Correlation versus Lag")
% xlabel("Lag")
% ylabel("Amplitude")




% [y , Fs_y] = audioread('speech_segment.wav'); % segment of signal we want to
% % search
% [x , Fs_x] = audioread('speech.wav'); % complete signal or speech
% % sound(y, Fs_y) % sends the signal in vector y (with sample frequency Fs_y)
% % to the speaker on PC
% % pause(2) %to insert a pause of 2 seconds between the two audio files
% % sound(x, Fs_x)
% 
% x_noise  = randn(size(x));
% x_new = x + (x_noise / 90);
% n_neww = x_new.^2;
% sound(x_new,Fs_x)
% Pn = mean(n_neww);
% Px = mean(x.^2);
% SNR = Px / Pn










% TASK Postlab
% Task i
[main_audio, Fs_a] = audioread("main_audio.wav");
[audio_1, Fs_1] = audioread("okay_1.wav");
[audio_2, Fs_2] = audioread("okay_2.wav");
[audio_3, Fs_3] = audioread("okay_3.wav");
[audio_4, Fs_4] = audioread("okay_4.wav");
subplot (4,1,1)
[correlation_1, lag_1] = xcorr(main_audio, audio_1);
max1 = max(abs(correlation_1));
Nonlinear_Effect_1 = (1.1*correlation_1/max1).^3;
[value1, index1] = max(Nonlinear_Effect_1);
plot(lag_1, Nonlinear_Effect_1)
xlabel("Okay 1 Signal")
ylabel("Amplitude")
title("Plot for correlation between Okay 1 and main audio")
grid on;
subplot (4,1,2)
[correlation_2, lag_2] = xcorr(main_audio, audio_2);
max2 = max(abs(correlation_2));
Nonlinear_Effect_2 = (1.1*correlation_2/max2).^3;
[value2, index2] = max(Nonlinear_Effect_1);
plot(lag_2, Nonlinear_Effect_2)
xlabel("Okay 2 Signal")
ylabel("Amplitude")
title("Plot for correlation between Okay 2 and main audio")
grid on;


subplot (4,1,3)
[correlation_3, lag_3] = xcorr(main_audio, audio_3);
max3 = max(abs(correlation_3));
Nonlinear_Effect_3 = (1.1*correlation_3/max3).^3;
[value3, index3] = max(Nonlinear_Effect_3);
plot(lag_3, Nonlinear_Effect_3)
xlabel("Okay 3 Signal")
ylabel("Amplitude")
title("Plot for  correlation between Okay 3 and main audio")
grid on;
subplot (4,1,4)
[correlation_4, lag_4] = xcorr(main_audio, audio_4);
max4 = max(abs(correlation_4));
Nonlinear_Effect_4 = (1.1*correlation_4/max4).^3;
[value4, index4] = max(Nonlinear_Effect_4);
plot(lag_4, Nonlinear_Effect_4)
xlabel("Okay 4 Signal")
ylabel("Amplitude")
title("Plot for  correlation between Okay 4 and main audio")
grid on;



peaks = [max1 max2 max3 max4];
minimum_threshold = min(peaks)

if ( minimum_threshold <= 21)
    disp("Password Accepted")
else 
    disp("Password Not Accepted")

end




















% subplot(5,1,1)
% plot(main_audio)
% xlabel("Main Audio Signal")
% ylabel("Amplitude")
% title("Main Audio Signal")
% subplot(5,1,2)
% plot(audio_1)
% xlabel("Okay 1 Signal")
% ylabel("Amplitude")
% title("Okay 1 Signal")
% subplot(5,1,3)
% plot(audio_2)
% xlabel("Okay 2 Signal")
% ylabel("Amplitude")
% title("Okay 2 Signal")
% subplot(5,1,4)
% plot(audio_3)
% xlabel("Okay 3 Signal")
% ylabel("Amplitude")
% title("Okay 3 Signal")
% subplot(5,1,5)
% plot(audio_4)
% xlabel("Okay 4 Signal")
% ylabel("Amplitude")
% title("Okay 4 Signal")


























