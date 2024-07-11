


% % TASK 1 (A)
% a = 15.5  +  3.175j;
% % Part a
% real(a)
% % Part b
% imag(a)
% % Part c
% conj(a)
% % Part d
% angle(a)
% % Part e
% abs(a)



% 
% % TASK 1(B)
% b = [45 5];
% [X, Y] = pol2cart(deg2rad(b(1)),b(2));
% a = X + Y*j;
% % Part a
% real(a)
% % Part b
% imag(a)
% % Part c
% conj(a)
% % Part d
% angle(a)
% % Part e
% abs(a)












% TASK 2(a)(i)
% n = 0:10;
% y = cos(n);
% figure; plot(n, y, ':o');   
% title('Continuous-Time Vs Amplitude Plot');
% xlabel('Continuous Time');
% ylabel('Amplitude');
% figure; stem(n, y);
% title('Discrete-Time Vs Amplitude Plot');
% xlabel('Discrete Time');
% ylabel('Amplitude');

        


% % TASK 2(a)(ii)
% Ts = 0.1;
% Fs = 1/Ts;
% t = 0:Ts:10;
% y = cos(t); 
% figure;
% subplot 121; plot(t, y, ':o'); 
% title('Continuous-Time Vs Amplitude Plot for a sinosuid with non-unit sampling time');
% xlabel('Discrete Time');
% ylabel('Amplitude');
% subplot 122; stem(t, y);
% title('Discrete-Time Vs Amplitude Plot for a sinosuid with non-unit sampling time');
% xlabel('Continuous Time');
% ylabel('Amplitude');




% % TASK 2(b)
% Ts = 0.02;
% Fs = 1/Ts;
% t = 0:Ts:3;
% x = (3.*exp(-t)).*(cos((20.*t) + (pi/3)));
% figure;
% subplot 111; stem(t, x);
% title('Discrete-Time Vs Amplitude Plot for x(t) with 0.02 sampling time');
% xlabel('Discrete Time');
% ylabel('Amplitude');




% clc; clear
% t = -20:1:20;
% y = mod(t,5); %the time vector is divided by 5 and remainder is used to 
% % plot the values resulting in a sawooth wave when plotted w.r.t time,
% % whereas the second argument 5 represents the time period/duration of 
% % one sawtooth pulse
% z = (t>=0); % t>=0 returns logic ‘1’ or ‘0’
% subplot(1,2,1);
% stairs(t,z,'linewidth',2) % This commands draws a stair step graph of the 
% % elements of z, at the locations specified in t.
% title('Unit-step signal');
% xlabel('Time');
% ylabel('Amplitude');
% axis([-20 20 0 1.1]); % This commands limits the axis. The first 2 entries 
% % limits the x-axis with the first entry as minimum and second entry as 
% % maximum for x-axis. The third entry is the minimum axis limit for y-axis 
% % while the fourth entry is the maximum axis limit for y axis.
% subplot(1,2,2);
% plot(t,y,'linewidth',1.5)
% title('Sawtooth signal');
% xlabel('Time');
% ylabel('Amplitude');
% axis([-20 20 0 5.2])










% % Task 3
% clc; clear
% t = -20:0.001:20;
% y = mod(t,5);
% z = (t>=0); % t>=0 returns logic ‘1’ or ‘0’
% stairs(t,z,'linewidth',2)
% title('Unit-step signal');
% xlabel('Time');
% ylabel('Amplitude');
% axis([-20 20 0 1.1]);
% 
% 
% saw_wave = (sawtooth(t,1)+1).*2 % The sawtooth command is used to get a 
% % that gives us the vector that we will used to plot the sawtooth wave with
% % respect to time. It takes two arguement. The first one is t which is 
% % the time vector. While the other arguement is xmax which is taken 1 to be
% % 1 as it represents 2pi.
% hold on
% plot(t,saw_wave,'linewidth',1.5)
% title('Sawtooth signal and Step Unit using Sawtooth command');
% xlabel('Time');
% ylabel('Amplitude');
% axis([-20 20 0 5.2]);
% legend('Unit Step ','Sawtooth')






% % Task 4
% 
% t = 0:0.005:5;
% x1 = sin(2*pi*1*t);
% x2 = sin(2*pi*10*t);
% elements = length(x1);
% noise = randn(1,elements);
% yt = x1 + x2 + 0.2*noise;
% zt1 = filter (ones(1,5)/5 , 1, yt);
% zt2 = filter (ones(1,20)/20 , 1, yt);
% 
% subplot(3,2,1)
% plot(t,x1)
% title('x1 versus time');
% xlabel('Time');
% ylabel('Amplitude');
% 
% subplot(3,2,2)
% plot(t,x2)
% title('x2 versus time');
% xlabel('Time');
% ylabel('Amplitude');
% 
% subplot (3,2,3)
% plot(t,0.2*noise)
% title('0.2*noise versus time');
% xlabel('Time');
% ylabel('Amplitude');
% 
% subplot(3,2,4)
% plot(t,yt)
% title('yt versus time');
% xlabel('Time');
% ylabel('Amplitude');
% 
% subplot(3,2,5)
% plot(t,zt1)
% title('zt versus time for N=5');
% xlabel('Time');
% ylabel('Amplitude');
% 
% subplot(3,2,6)
% plot(t,zt2)
% title('zt versus time for N=20');
% xlabel('Time');
% ylabel('Amplitude');



% % Task 5(a)
% a = 10.09 + 55.3j; 
% b = [85.5 20];
% [X, Y] = pol2cart(deg2rad(b(1)),b(2));
% c = X + Y*j;
% sum = a + c;
% real_value = real(sum)
% imaginary_value = imag(sum)
% complex_conjugate = conj(sum)
% phase_angle = angle(sum)
% magnitude = abs(sum)



% % Task 5(b)
% a = 4 + 10j; 
% b = [10 15];
% [X, Y] = pol2cart(deg2rad(b(1)),b(2));
% c = X + Y*j;
% sum = c - a;
% real_value = real(sum)
% imaginary_value = imag(sum)
% complex_conjugate = conj(sum)
% phase_angle = angle(sum)
% magnitude = abs(sum)



% Task 5 (2) Unit Impulse

% t = (-1:0.01:1);
% impulse = t == 0;
% 
% plot(t,impulse)
% title("Unit Impulse Signal");
% xlabel("Time");
% ylabel("Amplitude");





% % Task 5 (2) Unit Ramp
% 
% t = (-1:0.01:1);
% unitstep = t >= 0;
% ramp = t.*unitstep;
% plot(t,ramp)
% title("Unit Ramp Signal");
% xlabel("Time");
% ylabel("Amplitude");



% Task 6

t = -2:0.01:2;
mt = sin(2*pi*1*t);
ct = sin(2*pi*10*t);
st = (1+(0.5)*mt).*ct;

subplot(3,1,1)
plot(t,mt)
title(' Message Signal m(t) vs Time');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,2)
plot(t,ct)
title(' Carrier Signal c(t) vs Time');
xlabel('Time');
ylabel('Amplitude');

subplot(3,1,3)
plot(t,st)
title(' Modulated Signal s(t) vs Time');
xlabel('Time');
ylabel('Amplitude');


























































