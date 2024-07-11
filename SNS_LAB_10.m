% SNS LAB 10




% 2.2 (a)

% P = 64;
% w = 2*pi/P;
% n = 0:P-1;
% x = cos(10*w*n); %Finite-time signal
% hx = fft(x); %Compute the DFT of x
% stem(n,abs(hx)/P,'k','LineWidth',2); %Compute and plot magnitude of coefficients
% ylabel('Magnitude of DFT');
% xlabel('Frequency as multiples of “omega ̇0');
% axis([0 P-1 0 inf]);
% grid;




% 
% % 2.2 (b)
% 
% P = 64;
% w = 2*pi/P;
% n = 0:P-1;
% x = cos(10*w*n); %Finite-time signal
% hx = fft(x); %Compute the DFT of x
% shx = fftshift(hx);
% stem([-P/2:P/2-1],abs(shx)/P,'k','LineWidth',2);
% ylabel('Magnitude of DFT');
% xlabel('Frequency as multiples of “omega ̇0');
% axis([-P/2 P/2-1 0 inf]);
% grid;








% % TASK 1
% 
% P = 64;
% w0 = 2*pi/P;
% n = 0:P-1;
% x = cos(10*w0*n) + 0.5*cos(14*w0*n);
% hx = fft(x); %Compute the DFT of x
% shx = fftshift(hx);
% stem([-P/2:P/2-1],abs(shx)/P,'k','LineWidth',2);
% xlabel('k');
% ylabel('Magnitude of DFT');
% title('Frequency as multiples of “omega ̇0');
% axis([-P/2 P/2-1 0 inf]);
% grid on;




% % TASK 2
% clc; 
% ara = [1000, 2000, 3000, 4000];
% len = length(ara);
% for i = 1:len
%     % Define sampling frequency and time vector
%     fs = 8000;
%     N =ara(i);
%     T = N/fs;
%     n = 0:1/fs:(N-1/fs);
%     % Generate sine wave signal
%     f = 402;
%     omg0 = 2*pi*f;
%     x = sin(omg0*n);
%     % Compute 1000 point FFT of x
%     hx = fft(x, N);
%     hx = fftshift(hx); % Shift zero frequency to middle
%     % Generate frequency vector
%     fHz = -N/2:N/2-1;
%     % Plot magnitude spectrum
%     subplot(2,2,i);
%     stem(fHz/T, abs(hx));
%     grid on;
%     xlabel('Frequency (Hz)');
%     ylabel('Frequency as multiples of omega ̇0');
%     title("Magnitude Spectrum of x[n] at N = " +  num2str(ara(i))+ " Points.");
% end












% TASK 3

% Define signal parameters
f0 = 800; % Initial frequency
fs = 8000; % Sampling frequency
N = 8000;
t = 0:1/fs:N/fs;
% Create chirp signal
omg0 = 2*pi*f0;
x = sin(omg0*(t.^2));
% Compute FFT
hx = fft(x,N);
hhx = fftshift(hx);
% plot(freq, mag/N);
% xlabel('Frequency (Hz)');
% ylabel('Magnitude');
% title('Magnitude Spectrum of Chirp Signal');
% Define window length and FFT length
% 
% Compute spectrogram
% spectrogram(hhx, 512, [], 1024, fs, 'yaxis');
% xlabel('Time (s)');
% ylabel('Frequency (Hz)');
% title('Spectrogram of Chirp Signal');

% 
% Reverse the order of samples in x
x_rev = x(8000:-1:1);
winlen = 2048;
nfft = 1024;
hx1 = fft(x_rev,N);
hhx = fftshift(hx1);
% Compute spectrogram
spectrogram(hhx, winlen, [], nfft, fs, 'yaxis');

xlabel('Time (s)');
ylabel('Frequency (Hz)');
title('Spectrogram of Reversed Chirp Signal');






% % Spectogram
% 
% fs=8000;
% xx = cos(3000*pi*(0:1/fs:0.5));
% spectrogram(xx,1024,[],1024,fs,'yaxis');
% colorbar




















