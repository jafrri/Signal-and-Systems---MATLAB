%  SNS LAB 06


% Task 1

%Read image, visualize it, and display its size and class.
% I = imread("flower.jpg");
% % Convert to double precision
% I = im2double(I);
% Display
figure,
imshow(I)
% whos I
% 
% % Split the image into the 3 component color intensity planes or matrices.
% [R, G, B] = imsplit(I);
% whos R
% 
% % Create a 2-D convolution filter or kernel for averaging or smoothing
% W = 5;
% h = ones(W)./W .^ 2;

% % Convolve R with h to blur the image
% Ravg = conv2(R, h, "same");
% % Convolve G with h to blur the image
% Gavg = conv2(G, h, "same");
% % Convolve B with h to blur the image
% Bavg = conv2(B, h, "same");
% 
% % Concatenate the three matrices to put together the color image
% Iavg = cat(3,Ravg,Gavg,Bavg);
% whos Iavg
% imshow(Iavg,[])


% Task 2
% 
% n = 0:50;
% x_n = double((sin(0.5*n)+0.2) < 0);
% unitimpulse = n == 0;
% shiftedimpulse = (n-1) == 0;
% h_n = unitimpulse - shiftedimpulse;
% convolution_output = conv(x_n, h_n);
% subplot (3,1,1)
% stem(x_n)
% grid on;
% title("Plotting signal x[n]")
% xlabel("n");
% ylabel("Amplitude");
% subplot (3,1,2)
% stem(h_n)
% grid on;
% title("Plotting Unit Impulse Function h[n].");
% xlabel("n");
% ylabel("Amplitude");
% subplot (3,1,3)
% stem(convolution_output)
% grid on;
% title("Plotting Convolution output for x[n] and h[n]")
% xlabel("n");
% ylabel("Amplitude");


%  Task 3

load("echart.mat");
imshow(echart(1:65,:))

n = 0:1; 
unit_impulse = n == 0;
shift_imp = (n - 1) == 0;
hn = unit_impulse - shift_imp;
xn = echart(65,: )
yn = conv(echart(65,: ), hn);
subplot(2,1,1)
stem(echart(65,: ))
grid on;
xlabel("n");
ylabel("Amplitude")
title("Input Signal from row of the image.");
subplot(2,1,2)
stem(yn);
grid on;
xlabel("n");
ylabel("Amplitude");
title("Output signal from first difference filter");




% Task 5
% A = imread("HP110v3.png");
% [row, colum] = size(A);
% size_vec = row /2;
% o_row = A(size_vec,:);
% n = 0:1; 
% unit_impulse = n == 0;
% shift_imp = (n - 1) == 0;
% hn = unit_impulse - shift_imp;
% y_n= conv(hn,o_row);
% subplot(3,1,1)
% stem(o_row)
% grid on;
% xlabel("n");
% ylabel("Amplitude")
% title("Input Signal from row of the barcode.");
% subplot(3,1,2)
% stem(y_n);
% grid on;
% xlabel("n");
% ylabel("Amplitude");
% title("Output signal from first difference filter");
% threshold = 200;
% d_n = abs(y_n) > threshold;
% subplot(3,1,3)
% stem(d_n);
% grid on;
% xlabel("n");
% ylabel("Amplitude");
% title("Output signal after thresholding system");

% stem(k);
% grid on;
% xlabel("n");
% ylabel("Amplitude");
% title("Indices at where the peak is above threshold");

% k = find(d_n);
% y2_n = conv(k,hn);
% 
% 
% a = length(y2_n) - 59;
% x = round(y2_n(7:65)/8);
% 
% decoded = decodeUPC(x)






























 

