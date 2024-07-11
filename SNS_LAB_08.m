

% SNS LAB 08


% %TASK 2
% 
% a = 0.35;
% T = 0.88;
% T_d = 0.16;
% N = 50;
% n = N;
% t= [ -0.2:1/N/10:1.2];
% a0 = (4*T_d*a)/(pi*T);
% omg0 = (2*pi)/T;
% xtN = a0;
% 
% for k = 1:N
%     ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
%     bk = 0;
%    xtN = xtN + ak.*(cos((k*omg0*t)));
% end
%  plot(t, xtN,'linewidth',1);
%  grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
%  title(["P-wave component of ECG signal wave"]);



% % TASK 3
% % 
% % a = 1.2;
% % T = 0.88;
% % T_d = 0.08;
% % t0 = 0.2;
% % N = 50;
% % n = N;
% % t= [ -0.2:1/N/10:1.2];
% % a0 = (4*T_d*a)/(pi*T);
% % omg0 = (2*pi)/T;
% % xtN = a0;
% % 
% % for k = 1:N
% %     ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
% %     bk = 0;
% %    xtN = xtN + ak.*(cos((k*omg0*(t-t0))));
% % end
% %  plot(t, xtN,'linewidth',1);
% %  grid on; xlabel('time', 'Fontsize', 13); 
% %  ylabel('Amplitude (mV)', 'Fontsize',13)
% %  title(["QRS-wave component of ECG signal wave"]);



%TASK 4

a = 0.35;
T = 0.88;
T_d = 0.16;
t0 = 0;
N = 50;
n = N;
t= [ -0.2:1/N/10:1.2];
a0 = (4*T_d*a)/(pi*T);
omg0 = (2*pi)/T;
xtN1 = a0;

for k = 1:N
    ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
    bk = 0;
   xtN1 = xtN1 + ak.*(cos((k*omg0*(t-t0))));
end
subplot(5,1,1)
 plot(t, xtN1,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 title(["P-wave component of ECG signal wave"]);

a = 1.2;
T = 0.88;
T_d = 0.08;
t0 = 0.2;
N = 50;
n = N;
t= [ -0.2:1/N/10:1.2];
a0 = (4*T_d*a)/(pi*T);
omg0 = (2*pi)/T;
xtN2 = a0;

for k = 1:N
    ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
    bk = 0;
   xtN2 = xtN2 + ak.*(cos((k*omg0*(t-t0))));
end
subplot(5,1,2)
 plot(t, xtN2,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 title(["QRS-wave component of ECG signal wave"]);

a = -0.2;
T = 0.88;
T_d = 0.08;
t0 = 0.28;
N = 50;
n = N;
t= [ -0.2:1/N/10:1.2];
a0 = (4*T_d*a)/(pi*T);
omg0 = (2*pi)/T;
xtN3 = a0;

for k = 1:N
    ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
    bk = 0;
   xtN3 = xtN3 + ak.*(cos((k*omg0*(t-t0))));
end
subplot(5,1,3)
 plot(t, xtN3,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 title(["S-wave component of ECG signal wave"]);

a = 0.3;
T = 0.88;
T_d = 0.08;
t0 = 0.48;
N = 50;
n = N;
t= [ -0.2:1/N/10:1.2];
a0 = (4*T_d*a)/(pi*T);
omg0 = (2*pi)/T;
xtN4 = a0;

for k = 1:N
    ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
    bk = 0;
   xtN4 = xtN4 + ak.*(cos((k*omg0*(t-t0))));
end
subplot(5,1,4)
 plot(t, xtN4,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 title(["T-wave component of ECG signal wave"]);

a = 0.055;
T = 0.88;
T_d = 0.06;
t0 = 0.68;
N = 50;
n = N;
t= [ -0.2:1/N/10:1.2];
a0 = (4*T_d*a)/(pi*T);
omg0 = (2*pi)/T;
xtN5 = a0;

for k = 1:N
    ak = 4*a*T_d*((sin(((pi*T)-(2*k*pi*T_d))/(2*T)))/((pi*T)-(2*k*pi*T_d))+(sin(((pi*T)+(2*k*pi*T_d))/(2*T)))/((pi*T)+(2*k*pi*T_d)));
    bk = 0;
   xtN5 = xtN5 + ak.*(cos((k*omg0*(t-t0))));
end
subplot(5,1,5)
 plot(t, xtN5,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 title(["U-wave component of ECG signal wave"]);



 % TASK 5

 ECG = xtN1 + xtN2 + xtN3 + xtN4 + xtN5;
 figure;
 
 plot(t,ECG,'linewidth',1);
 grid on;
 title(["ECG Waveform"]);
 xlabel('time', 'Fontsize', 13); 
 ylabel('Amplitude (mV)', 'Fontsize',13)
 

























