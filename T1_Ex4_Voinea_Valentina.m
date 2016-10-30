Ts_2ms = 0.002;
Ts_20ms = 0.02;
Ts_200ms = 0.2;

%% semnal sinusoidal redresat mono-alternanta

T = 3;

t_2ms = 0:Ts_2ms:2*T-Ts_2ms;

x_2ms = sin(t_2ms(t_2ms<T)*2*pi/T);
x_2ms = x_2ms * 0.8;
x_2ms(x_2ms<0)=0;
x_2ms =repmat(x_2ms,1,2);
figure(7);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal sinusoidal redresat mono-alternanta Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal sinusoidal redresat mono-alternanta Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal sinusoidal redresat mono-alternanta Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

