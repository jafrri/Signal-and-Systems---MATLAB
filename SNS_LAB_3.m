
% 
% syms A f0 t pi
% xt = A*sin(2*pi*f0*t);
% yt = int(xt,'t',[0,t]) 







% %Task C
% %A and fo are kept equal to 1 as mentioned above in the manual.
% t = 0:0.01:3;
% A = 1;
% fo = 1;
% pi = 3.142;
% xt = A.*sin(2.*pi.*fo.*t);
% plot(t,xt)
% grid on
% title('x(t) and y(t) versus t');
% xlabel('Time');
% ylabel('Amplitude');
% %yt = -(A.*cos(2.*fo.*pi.*t))/(2.*fo.*pi);
% yt = (A.*sin(fo*pi*t).^2)/(fo*pi);
% hold on
% 
% plot(t,yt)
% xlabel('Time');
% ylabel('Amplitude');
% legend('x(t)','y(t)')
% hold off



% % Task D
% 
% a = [ 1 2 3 4 5];
% b = cumsum(a)



% % Task H
% % A and fo are kept equal to 1 as mentioned above in the manual.
% t = 0:0.01:12;
% A = 1;
% fo = 1;
% xt = sinc(t-6);
% plot(t,xt)
% grid on
% title('x(t) and y(t) versus t');
% xlabel('Time');
% ylabel('Amplitude');
% yt = 0.01.*cumsum(xt);
% hold on
% 
% plot(t,yt)
% xlabel('Time');
% ylabel('Amplitude');
% legend('x(t)','y(t)')
% hold off;



% TASK Q
dt = 0.001;
t = -5:dt:5;
a = 0.001;

delta = (1/(a.*((pi).^0.5))) .*( exp(-(t.^2)/(a.^2)));
zt = dt.*cumsum(delta);
yt = [nan diff(zt)/dt];
plot(t,yt)
title('Unit Impulse versus time from Unit Step')
xlabel('Time (t)');
ylabel('Amplitude');












% area = sum(delta) .* 0.001


% % Task i
% 
% a = [ 1 2 3 4 5];
% b = diff(a)




% % TASK K
% t = 0:0.01:10;
% yt = 2*t.*exp(-t); 
% xt = -2*(t-1).*exp(-t);
% plot(t, yt)
% grid on
% xlabel('Time')
% ylabel('y(t) and x(t) against time') 
% title('Numerical Differentiation of Signal')
% hold on
% plot(t,xt) 
% legend('y(t)', 'x(t)')
% hold off;



% TASK L
% dt = 0.01;
% t = 0:dt:10;
% yt = (2*t).*(exp(-t));
% xt = [nan diff(yt)/dt];
% plot(t, yt)
% grid on
% xlabel('Time')
% ylabel('Amplitude') 
% title('Numerical Differentiation of a Signal y(t) and x(t)')
% hold on
% plot(t,xt) 
% legend('y(t)', 'x(t)')
% hold off;

% 
% % TASK M
%  dt = 0.01;
% t = 0:dt:12;
% 
% yt = sinc(t-6);
% xt = [nan diff(yt)/dt];
% plot(t, yt)
% grid on
% title('Numerical Differentiation of a Signal y(t) and x(t)');
% xlabel('Time');
% ylabel('Amplitude'); 
% 
% hold on
% plot(t,xt) 
% legend('y(t)', 'x(t)', 'Location', 'northwest')
% hold off;




























