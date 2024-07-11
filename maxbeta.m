



function B = maxbeta(L, fb, fs)
% Determine scaling factor B to make maximum frequency response equal to one
n = 0:L-1;
h = cos((2*pi*fb*n)/fs);
w = -pi:pi/L:pi;
H = freqz(h,1,w);
B = 1/max(abs(H));
end
