% SNS LAB 12


% % TASK 02
% 
fs=[1.5 2 4 16];
len = length(fs);
f0 = 2;
subplot(5,1,1)
t = 0:0.01:4;
x = sin(2*pi*f0*t);
plot(t,x);
grid on;
xlabel("Time / s");
ylabel("Amplitude");
title("Originial Signal of x")
for i = 1:len
dur=2;
T0=1/f0; %time period of signal
Ts=1/fs(i); %samping time
stepsize=0.01;
t=0:1/fs(i):1-1/fs(i);
xx=sin(2*pi*f0*t);
[yy,tt]=sampled(f0,fs(i),dur);
subplot(5,1,i+1)
plot(tt,yy,'r--o','Linewidth',2) %plotting the sampled signal
title("Sampling at fs="+num2str(fs(i))+" Hz.")
xlabel('Time(s)')
ylabel('Amplitude')
end




% % TASK 03
% 
% clc
% clear all
% close all
% warning off
% Fs=1000;%Sampling frequency in hertz e.g 1000Hz
% ch=1;%Number of channels--2 options--1 (mono) or 2 (stereo)
% datatype='uint8';
% nbits=16;%8,16,or 24
% Nseconds=5;
% 
% % to record audio data from an input device such as a microphone
% recorder=audiorecorder(Fs,nbits,ch);
% disp('Start speaking..')
% 
% %Records audio to audiorecorder, holds control until recording completes
% recordblocking(recorder,Nseconds);
% disp('End of Recording.');
% 
% %Stores recorded audio signal in numeric array
% x=getaudiodata(recorder,datatype);
% 
% %Write audio file
% audiowrite('test.wav',x,Fs);



% %  TASK 04
% dur = 3;
% fs = 8000;
% fundamental0 = 1000;
% f0 = [9000 17000 25000];
% len = length(f0);
% tt=0:1/fs:dur;
% xx = sin(2*pi.*fundamental0.*tt);
% x = xx(1:200);
% tt = tt(1:200);
% subplot(4,1,1)
% plot(tt,x,'k',LineWidth=2);
% grid on;
% title("Sine Tone generated at f0 = 1000 Hz")
% ylabel("Amplitude")
% xlabel("Time / s")
% for i= 1:len
%     [yy,t] = sampled(f0(i),fs,dur);
%     soundsc(yy);
%     y = yy(1:200);
%     t = t(1:200);
%     subplot(4,1,i+1)
%     plot(t,y,"k",LineWidth=2);
%     grid on;
%     title("Sine Tone generated at f0 = "+num2str(f0(i))+" Hz.")
%     ylabel("Amplitude")
%     xlabel("Time / s")
% end


% %  TASK 05
% dur=2;
% t=0:0.01:dur;
% subplot(4,1,1)
% f0=10;
% x = sin (2*pi*f0*t);
% plot(t,x)
% title("Original sine wave signal x")
% xlabel("Time / s")
% ylabel("Amplitude") 
% fs = [4, 10, 40];
% len = length(fs);
% for i=1:len
%  samp = fs(i) ;
%  [yy,tt]= sampled(f0,samp,dur);
%  subplot(4,1,i+1)
%  plot(tt,yy) %plotting the discrete signal
%  title("At sampling frequency of "+num2str(samp)+" Hz")
%   xlabel("n")
%  ylabel("Amplitude") 
% end


%  TASK 06
f0 =2;
%sampling frequencies 1.5Hz, 2Hz, 4Hz and 16Hz.
subplot(5,2,1)
 tt=0:0.01:4;
 xt = sin(2*pi*f0*tt);
 plot(tt,xt);
 grid on;
 xlabel("Time / s")
 ylabel("Amplitude")
 title("The Originial Signal sine wave x")
ffts =[];
fs = [1.5 2 4 16];
for i=1:4
 fs_ar = fs(i);
 t_n=0:1/fs_ar:1;
 [yy,tt]=sampled(f0, fs_ar,4);
 fftt = fft(yy);
 frequency = fs_ar/length(fftt)
 ffts = [ffts, frequency]; 
 subplot(5,1,i+1)
 plot(tt,yy)
 grid on;
 title("At sampling frequency of "+num2str(fs_ar)+" Hz")
 ylabel("Amplitude") 
 xlabel("Samples at frequnecy " + num2str(frequency)+"Hz")
end

































































