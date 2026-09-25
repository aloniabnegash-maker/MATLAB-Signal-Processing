 clear all;close all;clc;
% read file
[y,fs]=wavread('watchdog.wav');
n = length(y);

figure
plot(y)
sound(y,fs)
pause

% generate gaussian noise
noise = randn(n,1); % mean  = 0; std = 1
figure
subplot 211
plot(noise);
subplot 212
hist(noise,100);

% add noise to speech
dB = 10;
sf = 10.^(dB/20);
rmsy = rms(y);
rmsn = rms(noise);
noise = noise.*(rmsy./rmsn)./sf;
fp(noise,fs);

figure
plot(noise,'r');
hold on;
plot(y,'b');
axis off;

s = y+noise;
sound(s,fs)
pause

rmsn = rms(noise);
snr = 20*log10(rmsy/rmsn);
disp(snr)

figure
fp(s,fs);

f = s;

pOrig = audioplayer(f,fs);
% pOrig.play;
n = length(f);
%% Plot both audio channels
figure;
plot(f)
title('Channel');

%% Plot the spectrum
df = fs / n;
w = (-(n/2):(n/2)-1)*df;
y = fft(f(:,1), n) / n; %//For normalizing, but not needed for our analysis
y2 = fftshift(y);
figure;
plot(w,abs(y2));

%% Design a bandpass filter that filters out between 700 to 12000 Hz
n = 7;
beginFreq = 100/ (fs/2);
endFreq = 1400 / (fs/2);
wn = [beginFreq, endFreq];
% [b,a] = butter(n, wn, 'bandpass');

Rs = 115; Rp = 0.5;
[b,a] = ellip(n,Rp,Rs, wn);

%% Filter the signal
fOut = filter(b, a, f);

figure;
plot(fOut)
title('Channel');
%% Construct audioplayer object and play
p = audioplayer(fOut, fs);
p.play;
