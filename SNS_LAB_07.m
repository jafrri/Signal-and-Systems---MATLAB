% SNS LAB 07



% TASK 1

% % clc; clear; close all 
% % Set the dc term "a0". 
% % a0 = 1/3;
% % Define number of terms
% % realization_N = [10,20,50,100,150,200];
% % len = length(realization_N);
% % maxi = max(realization_N);
% % ak_vec = zeros(len,maxi);
% % Set TFS coefficients.
% % for i = 1:len
% %     k = 1:realization_N(i);
% %     ak_vec(i, 1:realization_N(i)) = 2*sin(pi*k/3)./(pi*k);
% % end
% % Create a vector of time instants. 
% % t = [-2:1/realization_N(end)/10:6];
% % Set the fundamental frequency.
% % TO = 3;
% % omg0 = 2*pi/TO;
% % Compute an approximation to signa 
% % using up to N-th harmonic.
% % for i = 1:len
% %     N = realization_N(i);
% %     ak = ak_vec(i,1:N);
% %     xtN = a0;
% %     for kk=1:N,
% %         xtN = xtN + ak(kk)*cos(kk*omg0*t); 
% %     end
% % Plot Nth-harmonic approximation. 
% %     subplot(3,2,i);
% %     plot(t, xtN,'linewidth',1);
% %     grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
% %     title ([num2str(N)....
% %     '-harmonic approximation to x(t)']);
% % 
% % end




% % TASK 2
% realization_N = [10,20,50,100,150,200];
% len = length(realization_N);
% a0 = 1/3;
% TO = 3;
% omg0 = 2*pi/TO;
% t = [-2:1/realization_N(end)/10:6];
% for i = 1:len
%      N = realization_N(i);
%      k = 1:N;
%      ak = 2*sin(pi*k/3)./(pi*k);
%      dk = abs(ak);
%      bk = 0;
%      theta = zeros(1,N);
%      for p = 1:N
%          if ak(p)   < 0
%              theta(p) = pi;
%          else
%              theta(p) = 0;
%          end
%      end
%      xtN = a0;
%      for kk = 1:N
%          xtN = xtN + dk(kk)*(cos((kk*omg0*t)-theta(kk)));
%      end
%  subplot(3,2,i)
%  plot(t, xtN,'linewidth',1);
%  grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
%  title([num2str(N)....
%  '-harmonic approximation to x(t)']);
% end



% % % TASK 3
% % realization_N = [5,10,20,30,40,50];
% % len = length(realization_N);
% % a = 1;
% % a0 = a/2;
% % TO = 3;
% % omg0 = 2*pi/TO;
% % t = -2:1/realization_N(end)/10:6;
% % for i = 1:len
% %      N = realization_N(i);
% %      k = 1:N;
% %      ak = 2*a.*((sin(2*pi.*k)./(2*pi.*k))+((cos(2*pi.*k)-1)./(4*pi*pi.*k.*k)));
% %      bk = 2*a.*((sin(2*pi.*k)./(4*pi*pi.*k.*k))-((cos(2*pi.*k))./(2*pi.*k)));
% %      dk = sqrt((ak.*ak)+(bk.*bk));
% %      theta = zeros(1,N);
% %      for p = 1:N
% %         theta(p) = atan2(bk(p),ak(p));
% %      end
% %      xtN = a0;
% %      for kk = 1:N
% %          xtN = xtN + dk(kk).*(cos((kk*omg0*t)-theta(kk)));
% %      end
% %  subplot(3,2,i)
% %  plot(t, xtN,'linewidth',1);
% %  grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
% %  title([num2str(N)....
% %  '-harmonic approximation to x(t)']);
% % end
%           
% 
% % TASK 4
% realization_N = [5,10,20,30,40,50];
% len = length(realization_N);
% a0 = 1/pi;
% TO = 1;
% omg0 = 2*pi/TO;
% t = -2:1/realization_N(end)/10:6;
% for i = 1:len
%      N = realization_N(i);
% 
%      xtN = a0;
%      for kk = 1:N
%               if (mod(kk,2)) == 0
%                 ak = -2/(pi*((kk.*kk)-1));
%               else
%                 ak = 0;
%               end
%               if kk == 1
%                 bk = 0.5;
%               else
%                 bk = 0;
%               end
% 
%      dk = sqrt((ak.*ak)+(bk.*bk));
%      theta =  atan2(bk,ak);
%      xtN = xtN + dk.*(cos((kk*omg0*t)-theta));
%      end
%  subplot(3,2,i)
%  plot(t, xtN,'linewidth',1);
%  xlim([0 2])
%  grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
%  title([num2str(N)....
%  '-harmonic approximation to x(t)']);
% end




% % TASK 5
% realization_N = [5,10,20,30,40,50];
% len = length(realization_N);
% for z = 1: len
%     N = realization_N(z);
%     a0 = 1/2; % Setting the dc term "a0".
%     %Obtaining plots for realizations of signal 𝑥(𝑡) with 𝑁=20  
%     k = 1:N; % Setting TFS coefficients.  
%     T0 = 2;  % Setting the fundamental frequency.
%     t = -2:1/N/10:6;  % Create a vector of time instants.
%     bk=0;
%     xtN = a0;
%     omg0 = 2*pi/T0; 
%     m=1;
%     zer = zeros(1,N);
%     curr = 2;
%     for j= 1:N
%         if j == curr
%             zer(j) = curr;
%             curr = curr +  4;
%         end
%     end
%     
%     for i = 1:N
%         k = zer(i);
%         if k ~= 0
%             ak = ((4*m) / (k*k*pi*pi))*((2*cos((k*pi)/2)) - cos(k*pi) -1);
%             dk = (-ak);
%             theta =  atan2(bk,ak);
%             xtN = (xtN + dk.*(cos((k*omg0*t)-theta)));
%         end
%     end
%     % Plotting Nth-harmonic approximation.
%     subplot(3,2,z);
%     plot(t, xtN, 'linewidth',1);  
%     grid on;
%     xlabel('time','Fontsize',13); 
%     ylabel('x\_N(t)','Fontsize',13); 
%     xlim([-2 2])
%     title([num2str(N) ... 
%         '-harmonic approximation to x(t)']);
% end



% TASK POSTLAB
% realization_N = [5,10,20,30,40,50];
% len = length(realization_N);
% for z = 1: len
%     N = realization_N(z);
%     a0 = 1/2; % Setting the dc term "a0".
%     %Obtaining plots for realizations of signal 𝑥(𝑡) with 𝑁=20  
%     k = 1:N; % Setting TFS coefficients.  
%     T0 = 2;  % Setting the fundamental frequency.
%     t = -2:1/N/10:6;  % Create a vector of time instants.
%     bk=0;
%     xtN = a0;
%     omg0 = 2*pi/T0; 
%     m=1;
%     zer = zeros(1,N);
%     curr = 2;
%     for j= 1:N
%         if j == curr
%             zer(j) = curr;
%             curr = curr +  4;
%         end
%     end
%     
%     for i = 1:N
%         k = zer(i);
%         if k ~= 0
%             ak = ((4*m) / (k*k*pi*pi))*((2*cos((k*pi)/2)) - cos(k*pi) -1);
%             dk = (-ak);
%             theta =  atan2(bk,ak);
%             xtN = (xtN + dk.*(cos((k*omg0*t)-theta)));
%         end
%     end
%     % Plotting Nth-harmonic approximation.
%     subplot(3,2,z);
%     plot(t, xtN, 'linewidth',1);  
%     grid on;
%     xlabel('time','Fontsize',13); 
%     ylabel('x\_N(t)','Fontsize',13); 
%     xlim([-2 2])
%     title([num2str(N) ... 
%         '-harmonic approximation to x(t)']);
% end


% % POSTLAB Q2
% realization_N = [5,10,20,30,40,50];
% len = length(realization_N);
% a = 1;
% a0 = a/2;
% TO = 3;
% omg0 = 2*pi/TO;
% t = -2:1/realization_N(end)/10:6;
% for i = 1:len
%      N = realization_N(i);
%      xtN = a0;
%      for k = 1:N
%         ak = 2*a.*((sin(2*pi.*k)./(2*pi.*k))+((cos(2*pi.*k)-1)./(4*pi*pi.*k.*k)));
%         bk = 2*a.*((sin(2*pi.*k)./(4*pi*pi.*k.*k))-((cos(2*pi.*k))./(2*pi.*k)));
%         c_k = (1/2) * (ak-(bk.*1j));
%         
%         xtN = xtN + (c_k).*(exp(1j.*k.*omg0.*t));
%      end
%  subplot(3,2,i)
%  plot(t, xtN,'linewidth',1);
%  grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
%  title([num2str(N)....
%  '-harmonic approximation to x(t)']);
% end


% POSTLAB 1(b)

realization_N = [5,10,20,30,40,50];
len = length(realization_N);
a = 1;
a0 = 0;
TO = 1;
omg0 = 2*pi/TO;
t = -2:1/realization_N(end)/10:6;
for i = 1:len
     N = realization_N(i);
     xtN = a0;
     for k = 1:N
        bk = -((32 * (sin((pi*k)/4))^3) * cos((pi * k)/4) * cos(pi * k))/(pi^2 * k^2);
        ak = (16 * (sin((pi * k)/4))^2 * sin((pi*k)/2) * sin(pi*k))/(pi^2 * k^2);
        dk = sqrt(ak^2 + bk^2);
        theta_k = atan2(bk, ak);
        xtN = xtN +  dk * cos(k * omg0 * t - theta_k);
     end
 subplot(3,2,i)
 plot(t, xtN,'linewidth',1);
 grid on; xlabel('time', 'Fontsize', 13); ylabel('x_N(t)', 'Fontsize',13)
 xlim([0 6])
 title([num2str(N)....
 '-harmonic approximation to x(t)']);
end























