% SNS LAB 10

% TASK 01

% ftable = [1;2;3;4;5]*[80,110]
% fs = 8000; xx = [ ];
% keys = rem(3:12,10) + 1;
% for ii = 1:length(keys)
% kk = keys(ii);
% xx = [xx,zeros(1,400)];
% krow = ceil(kk/2);
% kcol = rem(kk-1,2) + 1;
% dur=0.15;
% t=0:1/fs:dur;
% xx = [xx, cos(2*pi*ftable(krow,kcol)*t)];
% end
% soundsc(xx,fs);



% TASK 02

% keyNames=['1','2','3'];
% [xx]=dtmfdial(keyNames, 8000);
% sound(xx, 8000);


% 
% % TASK 03
% 
% L = 51;
% fb = 852;
% fs = 8000;
% B = maxbeta(L,fb,fs)






% 
% % TASK 04
% 
% V=[40 80 120 160];
% figure;
% for j=1:length(V)
% fd=[697 770 852 941 1209 1336 1477 1633];
% hh=dtmfdesign(fd,V(j),8000);
% fn = 0:(pi/V(j)):pi;
% 
% subplot(length(V),1,j)
% grid on
% sgtitle("Frequency Response for different values of L")
% title("Frequency Response for "+"L=" +num2str(V(j)))
% xlabel("Normalized Radian Frequency")
% hold on
% for z=1:8
% hn=hh(:,z);
% 
% plot(fn,abs(hn))
% end
% end





% V=[40 80];
% figure;
% for j=1:length(V)
% fd=[697 770 852 941 1209 1336 1477 1633];
% hh=dtmfdesign(fd,V(j),8000);
% fn = 0:(pi/V(j)):pi;
% 
% subplot(length(V),1,j)
% grid on
% sgtitle("Frequency Response for different values of L")
% title("Frequency Response for "+"L=" +num2str(V(j)))
% xlabel("Normalized Radian Frequency")
% hold on
% for z=1:8
% hn=hh(:,z);
% 
% plot(fn,abs(hn))
% legend("697","770","852","941","1209","1336","1477","1633")
% end
% end



% TASK 6


% fs = 8000; %¡--use this sampling rate in all functions
% tk = ['A','B','C','D','*','#','0','1','2','3','4','5','6','7','8','9'];
% xx = dtmfdial( tk, fs );
% soundsc(xx, fs)
% L = 80;
% res= dtmfrun(xx, L, fs)







% TASK 7


%407*89132BADC

fs = 8000; %¡--use this sampling rate in all functions
tk = ['4','0','7','*','8','9','1','3','2','B','A','D','C'];
xx = dtmfdial( tk, fs );
soundsc(xx, fs)
L = 80;
res= dtmfrun(xx, L, fs)





























