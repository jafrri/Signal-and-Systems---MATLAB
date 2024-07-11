


function xx = dtmfdial(keyNames,fs)
%DTMFDIAL Create a signal vector of tones which will dial
% a DTMF (Touch Tone) telephone system.
%
% usage: xx = dtmfdial(keyNames,fs)
% keyNames = vector of characters containing valid key names
% fs = sampling frequency
% xx = signal vector that is the concatenation of DTMF tones.
dtmf.keys = ...
['1','2','3','A';
'4','5','6','B';
'7','8','9','C';
'*','0','#','D'];
dtmf.colTones = ones(4,1)*[1209,1336,1477,1633];
dtmf.rowTones = [697;770;852;941]*ones(1,4);
%This is an incomplete function
%----Write your code here-----
xx = [ ];
for i = 1:length(keyNames)
xx = [xx,zeros(1, 0.05*fs)];
[ii,jj] = find(dtmf.keys==keyNames(i));
dur=0.20;
t=0:1/fs:dur;
dtmf.rowTones(ii, jj);
frequency1 = 2*pi*dtmf.colTones(ii,jj)*t;
frequency2 = 2*pi*dtmf.rowTones(ii,jj)*t;
xx = [xx, cos(frequency1) + cos(frequency2)];
end
