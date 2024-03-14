clc;
clear all;
close all;
n=0:30;
% u[n] is the unit impulse signal:
for i=0:30
    if i>=0
        y(i+1)=1;
    else 
        y(i+1)=0;
    end
end 
subplot(211)
stem(n,y);
ylim([-1 2]);
xlim([-5 30]);
legend('u[n]');
% u[n-16] is the unit impulse signal:
for i=0:30
    if i>=16
        y(i+1)=1;
    else 
        y(i+1)=0;
    end
end 
subplot(212)
stem(n,y,'r');
ylim([-1 2]);
xlim([-5 30]);
legend('u[n-16]');