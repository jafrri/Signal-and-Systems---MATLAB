
% SNS LAB 09

% TASK 01 

% bb = [0.5, 0.5]; %-- Filter Coefficients
% ww = -pi:(pi/100):pi; %-- Frequency vector
% H = freqz(bb, 1, ww); %frequency reponse
% subplot(2,1,1);
% plot(ww, abs(H)), grid on
% ylabel('magnitude')
% xlabel('Normalized Radian Frequency')
% title('Magnitude Response')
% subplot(2,1,2);
% plot(ww, angle(H)), grid on
% title("Phase response")
% xlabel('Normalized Radian Frequency')
% ylabel('Phase (rad)')


% TASK 01 a

% b = ones(1,4); %-- Filter Coefficients
% bb = (1/4).*(b);
% ww = -pi:(pi/100):pi; %-- Frequency vector
% H = freqz(bb, 1, ww); %frequency reponse
% subplot(2,1,1);
% plot(ww, abs(H)), grid on
% ylabel('magnitude')
% xlabel('Normalized Radian Frequency')
% title('Magnitude Response')
% subplot(2,1,2);
% plot(ww, angle(H)), grid on
% title("Phase response")
% xlabel('Normalized Radian Frequency')
% ylabel('Phase (rad)')



% Task 01 c


omg = -pi:(pi/100):pi;
H_w = (((2*cos(0.5.*omg))) + ((2*cos(1.5.*omg)))/4).*(exp(-1.5*1j.*omg));

subplot(2,1,1) 
plot(omg, abs(H_w))
xlabel('Frequency (in Hz)')
ylabel('Magnitude')
title('Magnitude Response')
grid on
subplot (2,1,2)
plot(omg, angle(H_w))
xlabel('Frequency (in Hz)')
ylabel('Phase (in radians)')
title('Phase Response')
grid on


% TASK 01 part d
% % Computing frequency responses for differnet values of filter length
% K_array = [10 30 50];
% for ind = 1:length(K_array)
%     K = K_array(ind); % Specifying the filter length for each iteration
%     ww = -pi:(pi/200):pi;
%     bb = ones(1, K) / K; % Filter Coefficients
% 
%     h = freqz(bb, 1, ww);
%     subplot(length(K_array), 2, (2*ind)-1)
%     plot(ww, abs(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Magnitude')
%     title(['Magnitude Response, K = ', num2str(K)])
%     grid on
%     subplot(length(K_array), 2, 2*ind)
%     plot(ww,angle(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Phase (in radians)')
%     title(['Phase Response, K = ', num2str(K)])
%     grid on
% end




% TASK 2 A

% wc = 0.44*pi;
% L =10;
% n = 0:L-1;
% bb = (2/L).*(cos(wc.*n));
% ww = -pi:(pi/100):pi;
% h = freqz(bb,1,ww);
% subplot (2,1,1)
% plot(ww, abs(h))
% xlabel('Frequency (in Hz)')
% ylabel('Magnitude')
% title('Magnitude Response')
% grid on
% subplot (2,1,2)
% plot(ww, angle(h))
% xlabel('Frequency (in Hz)')
% ylabel('Phase (in radians)')
% title('Phase Response')
% grid on 




% TASK 2 B

% L = [20 40];
% 
% for index = 1:length(L)
%     wc = 0.44*pi;
%     n = 0:(L(index))-1;
%     bb = (2/L(index)).*(cos(wc.*n));
%     ww = -pi:(pi/100):pi;
%     h = freqz(bb,1,ww);
%     h_max = max(h);
%     h_array = (abs(h) / h_max) > 0.707;
%     indice = find(h_array);
%     width = length(indice) / 2;
%     "Width for L=" + num2str(L(index)) + " is " + num2str(width)
%     subplot (length(L),2,(2*index)-1)
%     plot(ww, abs(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Magnitude')
%     title(['Magnitude Response for L= ', num2str(L(index))])
%     grid on
%     subplot (length(L),2,2*index)
%     plot(ww, angle(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Phase (in radians)')
%     title(['Phase Response for L=',num2str(L(index))])
%     grid on 
% 
% end


% TASK 2 C

% L = 1:1:1000;
% 
% for index = L
%     wc = 0.44*pi;
%     n = 0:(L(index))-1;
%     bb = (2/L(index)).*(cos(wc.*n));
%     ww = -pi:(pi/100):pi;
%     h = freqz(bb,1,ww);
%     h_max = max(h);
%     w = 0:(pi/100):pi;
%     pass =true;
%     for freq = 1:length(w)
%         if w(freq) <= 0.3*pi || w(freq) >= 0.7*pi && w(freq) <= pi
%                 if abs(abs(h(freq))/h_max) > 0.1
%                     pass = false;
%                     break
%                 end      
%         end
%     
% 
%     end
% if(pass)
%    i = abs(L(index))
%    break;
% end
% 
% end
     
%     h_array = (abs(h) / h_max) > 0.707;
%     indice = find(h_array);
%     width = length(indice) / 2;
%     "Width for L=" + num2str(L(index)) + " is " + num2str(width)
%     subplot (length(L),2,(2*index)-1)
%     plot(ww, abs(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Magnitude')
%     title(['Magnitude Response for L= ', num2str(L(index))])
%     grid on
%     subplot (length(L),2,2*index)
%     plot(ww, angle(h))
%     xlabel('Frequency (in Hz)')
%     ylabel('Phase (in radians)')
%     title(['Phase Response for L=',num2str(L(index))])
%     grid on 


% TASK 2 D

% wc = 0.44*pi;
% L =37;
% n = 0:L-1;
% bb = (2/L).*(cos(wc.*n));
% ww = -pi:(pi/100):pi;
% h = freqz(bb,1,ww);
% x_n = 10*cos(0.3*pi*n) + 40*cos(0.44*pi*n - pi/3) + 20*cos(0.7*pi*n - pi/4);
% y = conv(bb,x_n);
% % plot(convulution)
% % grid on
% % title("Impulse response of x[n]")
% % ylabel("Amplitude")
% % xlabel("n")
% fs = 2*pi; % sampling frequency
% t = 0:(1/fs):(10-1/fs); % time vector
% S= x_n; %output acquired in step 1
% n = length(S);
% X = fft(S) ;
% Y = fftshift(X);
% fshift = (-n/2:n/2-1)*(fs/n); % zero-centered frequency range
% plot(fshift,abs(Y)/n)
% title("Frequency Representation of X[n] using fft.")
% ylabel("magnitude")
% xlabel("frequency")






















