

function fil = dtmfdesign(fb, L, fs)
size=length(fb);
fil = [zeros(L,size)];
n=0:L-1;
for k=1:size
    fn=0:pi/L:pi;
    B=maxbeta(L,fb(k),fs);
    h_n=B*cos((2*pi*fb(k)*n)/fs);
    fil(1:end,k)=h_n;
end
end