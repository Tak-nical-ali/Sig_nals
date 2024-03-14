clc;
clear all;
close all;
n=1:0.5:40;
x=1*exp(1i*(pi/10)*n);
subplot(611)
plot(n,x);grid on;
xlabel('n');
ylabel('x(n)');
legend('3(i):f(x)=Ae^(jwn)');
subplot(612)
plot(real(x),imag(x));
xlabel('Real part');
ylabel('Imaginary part');
legend('3(ii):Imaginary vs real part');
subplot(613)
stem(n,real(x));
%Solution of no 3(iii):
xlabel('n');
ylabel('Imaginary part');
subplot(614)
stem(n,imag(x));
xlabel('n');
ylabel('Real part');

n=1:40;
A=1;
omega = pi/10;
x=A*exp(1i*omega*n);
xr=real(x);
xi=imag(x);
z=abs(A*sqrt((xr.*xr) +(xi.*xi)));
subplot(615)
stem(n,z);
legend(' magnitude vs n');
xlim([-5 30]);
ylim([-1 2]);

a=zeros(length(xr));
for i=1:length(a)
    a(i)=xi(i)/xr(i);
end
phases=atan(a);
subplot(616)
stem(n,phases);
legend('phase vs sample number');