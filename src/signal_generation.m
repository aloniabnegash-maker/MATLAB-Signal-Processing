% Program: W2E1b.m
% Generating 64 samples of x(t)=sin(2*pi*f*t) with a
% Frequency of 1KHz, and sampling frequency of 8KHz.
N=64; % Define Number of samples
n=0:N-1; % Define vector n=0,1,2,3,...62,63
f=1000; % Define the frequency
fs=8000; % Define the sampling frequency
x=sin(2*pi*(f/fs)*n); % Generate x(t)
plot(n,x); % Plot x(t) vs. t
grid;
title('Sinewave [f=1KHz, fs=8KHz]');
xlabel('Sample Number');
ylabel('Amplitude');

% Generating the signal x(t)=exp(-0.1t)
t=0:0.1:40;
x=exp(-0.1*t);
plot(t,x);
grid;
title('Exponential Signal');
xlabel('Time [mS]');
ylabel('Amplitude');


% Generating 64 Samples of a unit impulse signal
N=64; % Define the number of samples
n=-(N/2):((N/2)-1); % Define a vector of sample numbers
x=zeros(1,N); % Define a vector of zeros
x((N/2)+1)=1.0; % Make the first sample to be 1 (i.e.at t=0)
plot(n,x); % Plot the impulse
grid;
title('A Unit Impulse Signal');
xlabel('Sample Number');
ylabel('Amplitude');


% Generates 40 samples of a unit step signal, u(n)
N=40; % Define the number of samples
n=-20:20; % Define a suitable discrete time axis
u=[zeros(1,(N/2)+1),ones(1,(N/2))]; % Generate the signal
plot(n,u); % Plot the signal
axis([-20,+20,-0.5,1.5]); % Scale axis
grid;
title('A Unit Step Signal');
xlabel('Sample Number');
ylabel('Amplitude');



% Generates Uniformly and Normally Distributed random signals
N=1024; % Define Number of samples
R1=randn(1,N); % Generate Normal Random Numbers
R2=rand(1,N); % Generate Uniformly Random Numbers
figure(1); % Select the figure
subplot(2,2,1); % Subdivide the figure into 4 quadrants
plot(R1); % Plot R1 in the first quadrant
grid;
title('Normal [Gaussian] Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(2,2,2); % Select the second qudrant
hist(R1); % Plot the histogram of R1
grid;
title('Histogram [Pdf] of a normal Random Signal');
xlabel('Sample Number');
ylabel('Total');
subplot(2,2,3);
plot(R2);
grid;
title('Uniformly Distributed Random Signal');
xlabel('Sample Number');
ylabel('Amplitude');
subplot(2,2,4);
hist(R2);
grid;
title('Histogram [Pdf] of a uniformly Random Signal');
xlabel('Sample Number');
ylabel('Total');




