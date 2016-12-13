clear all;
P = 40; % perioada = 40
F=1/P; % frecventa semnalului 
D = 23; % durata semnalului
w0=2*pi/P; % pulsatia
Ts = P/4000; % perioada de esantionare 
Fs = 1/ Ts; % frecvanta de esantionare
t=0:Ts:5*P; % generarea vectorului de timp
x = square(2*pi*F*t,(D/P)*100); % generarea semnalului dreptunghiular cu factorul de umplere corespunzator

figure(1);
plot(t,x); % afisarea semnalului 
title('Semnalul x, semnalul x refacut(cu rosu)');
xlabel('Timp [s]');
ylabel('Amplitudine [V]');


% calculul coeficientilor cu ajutorul integralei
for k = -50:50
fun = @(t) square(2*pi*F*t,(D/P)*100).*exp(-i*k*w0*t);
q(k+51) = integral(fun,0,39);
end


w = -50*w0:w0:50*w0; % generarea vectorului de pulsatii
figure(2);
stem(w/(2*pi),abs(q)); % afisarea coeficientilor calculati
title('Spectrul de amplitudini al semnalului x');

X_50(1:length(t)) = 0; % initializarea semnalului pe care il vom construi
for t_i = 1:length(t);
for k = -50:50
X_50(t_i) = X_50(t_i) + (1/P)*q(k+51)*exp(i*k*w0*t(t_i)); 
end
end
figure(1);
hold on
plot(t,X_50,'r'); % afisarea cu rosu a semnalului reconstruit


%%
% Dupa cum se poate observa semnalul reprodus din cei 101 coeficienti, 50
% la stanga, 50 la dreapta si unul in punctul 0, se apropie ca foma de
% semnalul original dar nu este identic deoarece acesta este compus dintr-o 
% infinitate de coeficienti (in formula suma este de la - infinit la +infinit).
% Pe masura ce vom adauga mai multi coeficienti vom obtine o forma de unda
% mai apropiata de semnalul original.



