% SNS LAB 5


% % TASK 3
% % Task (a)
% n = -20:1:20;
% zn = sin(0.3142.*n);
% noise = rand(1,41);
% xn = zn + noise;
% y1 = movmean(xn,5);
% % Task (b)
% impulse = n==0;
% h = movmean(impulse,5);
% % Task (c)
% y2 = conv(y1,h);
% 
% 
% 
% 
% 
% % Task (d)
% subplot(4,1,1)
% plot(xn)
% title("Signal x[n]");
% ylabel("Amplitude");
% xlabel('n')
% subplot(4,1,2)
% plot(y1)
% title(" Signal y1: Output of moving averaging filter for x[n]");
% ylabel("Amplitude");
% xlabel('n')
% xlim([20 40]);
% subplot(4,1,3)
% plot(h)
% title("Signal h: Output of moving averaging filter for unit impulse function");
% ylabel("Amplitude");
% xlabel('n')
% subplot(4,1,4)
% plot(y2)
% title("Signal y2: Convolution of X[n] and unit impulse");
% ylabel("Amplitude");
% xlabel('n')
% xlim([20 40]);
% grid on


%TASK 4

[h, Fh] = audioread('1st_baptist_nashville_balcony.wav');
disp(size(h))

soundsc(h,Fh); % Play the sound
pause(length(h)/Fh) % Wait for audio to finish playing

[x, Fx] = audioread('ringtone.wav'); % Read input
disp(size(x))
soundsc(x,Fx); % Play the sound
pause(length(x)/Fx) % Wait for audio to finish playing
h1 = h(:,1); % Extract the first channel from the impulse response
%In simple words extracting all the rows of first column
h2 = h(:,2); % Extract the second channel from the impulse respose
%ISimilarly extracting all the rows of second column of h

y1 = conv(h1,x);
y2 = conv(h2,x);
y = [y1, y2];
soundsc(y,Fx)

subplot(3,1,1)
plot(x)
title("Signal x: Ringtone");
ylabel("Amplitude");
xlabel('n')
subplot(3,1,2)
plot(h)
title("Signal h: Reverbed sound");
ylabel("Amplitude");
xlabel('n')
subplot(3,1,3)
plot(y)
title("Signal y: Reverbed Ringtone");
ylabel("Amplitude");
xlabel('n')
grid on


% Task Postlab
% 
x = [1, 2, 3, 4, 5];
h = [-1, 2, 1];
w1 = discrete_convo(h, x)
w2 = conv(h, x)
% figure;
% subplot(4, 1, 1);
% stem(0 : length(h) - 1, h);
% xlim([-2, 5]);
% ylim([0, 8]);
% title('h[n]');
% xlabel("n")
% ylabel("Amplitude")
% subplot(4, 1, 2);
% stem(0 : length(x) - 1, x);
% xlim([-2, 5]);
% ylim([0, 8]);
% title('x[n]');
% xlabel("n")
% ylabel("Amplitude")
% subplot(4, 1, 3);
% stem(w1);
% xlim([-2, 5]);
% ylim([0, 8]);
% title("Signal w1[n] using function discrete convolution");
% xlabel("n")
% ylabel("Amplitude")
% subplot(4, 1, 4);
% stem(w2);
% xlim([-2, 5]);
% ylim([0, 8]);
% title("Signal w2[n] using function built-in function convo");
% xlabel("n")
% ylabel("Amplitude")
% 
% 
% 
% 
function w = discrete_convo(u, v)
  M = length(u);
  N = length(v);
  w = zeros(1, M + N - 1);
  for n = 1 : M + N - 1
    for k = max(1, n - N + 1) : min(n, M)
      w(n) = w(n) + u(k) * v(n - k + 1);
    end
  end
end

%   elseif(M>N)
%   zero = zeros(1,M - N);
%   new = [N zero];
%   new_len = length(new);
%   w = zeros(1, M + new_len - 1);
%   for n = 1 : M + new_len - 1
%     for k = max(1, n - new_len + 1) : min(n, M)
%       w(n) = w(n) + u(k) * v(n - k + 1);
%     end
%   end
%   else
%   zero = zeros(1,N-M);
%   new = [M zero];
%   new_len = length(new);
%   w = zeros(1, M + new_len - 1);
%   for n = 1 : M + new_len - 1
%     for k = max(1, n - new_len + 1) : min(n, M)
%       w(n) = w(n) + u(k) * v(n - k + 1);
%     end
%   end
%   end































