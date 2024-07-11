
%  SNS FINAL LAB EXAM

% TASK (a)



duration = 2;
f0 = 2;
fs = 2;
[g, t] = sinusoid(f0, fs, duration);
stem(t, g);
xlabel('Time (s)');
ylabel('Amplitude');
title(' Sampled Sinusoidal Wave Signal');


function [g, t] = sinusoid(f0, fs, duration)
t = 0:1/fs:duration-1/fs;
g = sin(2*pi*f0*t);
end

