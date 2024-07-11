
% f = [1,2,3,4,5,6];
% f(4) = 60;
% f

























% % Task 1
% x = [2,4,5,9];
% %(i)
% y = x.*x
% %(ii)
% y = x.^2




% a = [2,5,3;1,1,0;9,6,-1];
% b = [-1;6;9];
% c = [3,-2,4];
% % (i)
% x = a * b
% % (ii)
% y = a+4
% % (iii)
%  z = b.'*a
% % (iv)
% s = c.*c


















% z = b*a; This line is generating error due to dimension issue. As order
% pair for b is 3x1 and for a is 3x3 so by transposing b the order pair
% will be 1x3 and multiplication will be possible.






% z = b.'*a










% % Task2(b)
% a = [3,1,4];
% b = [4,2,3];
% % (i)
% at = a.';
% bt = b.';
% % (ii)(a)
% ip1 = a*bt;
% % (ii)(b)
% ip2 = b*at;
% % (iii)(a)
% ot1 = bt*a;
% % (iii)(b)
% ot2 = at*b












% % Try 6
% x = -2:0.1:2;dt_2
% y = x.^2;
% plot(x,y)
% title('Plotting y(x)')
% xlabel('x-axis')
% ylabel('y-axis')















% % Task 3 (i)(b)
% dt_1 = 1 / (50 * 3);
% tmax_1 = 3 / 3;
% x = 0:dt_1:tmax_1;
% y = sin(2*pi*3*x);
% plot(x,y)
% title('Plotting y(x) for f0 = 3Hz')
% xlabel('x-axis')
% ylabel('y-axis')
















% %% Task 3 (ii)(b)
% dt_2 = 1 / (3 * 100);
% tmax_2 = 8 / 100;
% x = 0:dt_2:tmax_2;
% y = 1-exp(-100*x);
% plot(x,y)
% title('Plotting y(x) for a = 100')
% xlabel('x-axis')
% ylabel('y-axis')



% % Plotting 1st function
% x=-4:1:4;  
% m = x.^2; 
% plot(x, m,'k','LineWidth',2.5)
% title('Plotting m(x)');
% xlabel('x');     
% ylabel('Amplitude');
% 
% % Plotting 2nd function
% x=-4:0.1:4;  
% n = 2.5*(x.^2); 
% 
% hold on
% plot(x, n,'r')
% title('Plotting n(x)');
% xlabel('x');     
% ylabel('Amplitude');
% 
% % Plotting 3rd function
% x=-4:0.01:4;  
% p = 2*(x.^2); 
% plot(x, p,'g*')
% title('Plotting p(x)');
% xlabel('x');     
% ylabel('Amplitude');
% 
% axis([-4,4,0,40])
% legend('m','n','p')
% hold off









































































