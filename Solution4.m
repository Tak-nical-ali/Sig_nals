clc;
clear all;
close all;
% 'Solution of 4(i);
A = 5;
theta=0;
f=100;
Th=1/(2*f);
n = 0:Th:2;
 x =zeros(length(n));
 for i=1:length(n)
    x(i)=A * cos(2*pi*10*n(i)+theta);
 end
 subplot(711)
stem(n,x,'r');
xlabel('n');
ylabel(' Xa (t) = Acos(2piFt +?).');
legend('Solution of 4(i)');

A = 5;
F = 100;
T= 1/F;
n = 0:T:2;
f = [10 25 40 60 40 60];
th = [0 0 0 0 pi/2 pi/2];
k=2
for i=1:length(f)
    x = A*cos((2*pi*f(i)*n)+th(i));
    subplot(7,1,k)
    stem(n,x);
    xlabel('n');xlim([0.8 1.2]);
    ylabel('Xa(t)=Acos(2?Ft+th)');k=k+1;
end   