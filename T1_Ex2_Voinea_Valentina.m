Ts_2ms = 0.002;
Ts_20ms = 0.02;
Ts_200ms = 0.2;

%% semnal triunghiular

T = 5;

t_2ms = 0:Ts_2ms:2*T-Ts_2ms;

x_2ms = sawtooth(t_2ms(t_2ms<=T-Ts_2ms)*(2*pi/T),3/5); % panta+ = 1V/s ; panta- = -1.5 V/s
x_2ms = x_2ms * 1.5 - 0.5;
x_2ms =repmat(x_2ms,1,2);
figure(2);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal triunghiular Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal triunghiular Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal dreptunghiular Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')