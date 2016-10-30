Ts_2ms = 0.002;
Ts_20ms = 0.02;
Ts_200ms = 0.2;

%% semnal multinivel aleator a) {-1,1}


T = 5;
T_nivel = 0.25
t_2ms = 0:Ts_2ms:T-Ts_2ms;

x=rand(1,T/T_nivel);
x(x>0.5)=1;
x(x<0.5)=-1;

x_2ms =repmat(x,(T_nivel/Ts_2ms),1);
x_2ms = reshape(x_2ms,[1 ((T_nivel/Ts_2ms))*T/T_nivel])
figure(3);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal dreptunghiular aleator {-1,1} Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal dreptunghiular aleator {-1,1} Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal dreptunghiular aleator {-1,1} Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

%% semnal multinivel aleator a) {-3,-1,1,3}


T = 5;
T_nivel = 0.25
t_2ms = 0:Ts_2ms:T-Ts_2ms;

x=rand(1,T/T_nivel);
x(x>0.75)=3;
x(x<0.25)=-3;
x(0.5<x(x<0.75))=1;
x(0.5>x(x>0.25))=-1;

x_2ms =repmat(x,(T_nivel/Ts_2ms),1);
x_2ms = reshape(x_2ms,[1 ((T_nivel/Ts_2ms))*T/T_nivel])
figure(4);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal dreptunghiular aleator {-3,-1,1,3} Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal dreptunghiular aleator {-3,-1,1,3} Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal dreptunghiular aleator {-3,-1,1,3} Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')


%% semnal multinivel aleator a) {-5,-3,-1,1,3,5}


T = 5;
T_nivel = 0.25
t_2ms = 0:Ts_2ms:T-Ts_2ms;

x=rand(1,T/T_nivel);
x(x>5/6)=5;
x(x<1/6)=-5;
x(4/6<x(x<5/6))=3;
x(2/6>x(x>1/6))=-3;
x(3/6<x(x<4/6))=1;
x(3/6>x(x>2/6))=-1;

x_2ms =repmat(x,(T_nivel/Ts_2ms),1);
x_2ms = reshape(x_2ms,[1 ((T_nivel/Ts_2ms))*T/T_nivel])
figure(5);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal dreptunghiular aleator {-5,-3,-1,1,3,5} Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal dreptunghiular aleator {-5,-3,-1,1,3,5} Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal dreptunghiular aleator {-5,-3,-1,1,3,5} Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

%% semnal multinivel aleator a) {-7,-5,-3,-1,1,3,5,7}


T = 5;
T_nivel = 0.25
t_2ms = 0:Ts_2ms:T-Ts_2ms;

x=rand(1,T/T_nivel);
x(x>7/8)=7;
x(x<1/8)=-7;
x(6/8<x(x<7/8))=5;
x(2/8>x(x>1/8))=-5;
x(5/8<x(x<6/8))=3;
x(3/8>x(x>2/8))=-3;
x(4/8<x(x<5/8))=1;
x(4/8>x(x>3/8))=-1;

x_2ms =repmat(x,(T_nivel/Ts_2ms),1);
x_2ms = reshape(x_2ms,[1 ((T_nivel/Ts_2ms))*T/T_nivel])
figure(6);
subplot(3,1,1);
plot(t_2ms,x_2ms);
title('Semnal dreptunghiular aleator {-7,-5,-3,-1,1,3,5,7} Ts=2ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,2);
plot(t_2ms(1:10:length(t_2ms)),x_2ms(1:10:length(x_2ms)));
title('Semnal dreptunghiular aleator {-7,-5,-3,-1,1,3,5,7} Ts=20ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')

subplot(3,1,3);
plot(t_2ms(1:100:length(t_2ms)),x_2ms(1:100:length(x_2ms)));
title('Semnal dreptunghiular aleator {-7,-5,-3,-1,1,3,5,7} Ts=200ms');
xlabel('Timp [s]');
ylabel('Amplitudine [V]')
