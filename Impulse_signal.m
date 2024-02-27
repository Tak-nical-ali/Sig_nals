% 1 
clc;
clear all;
close all;
% del[n]
n=-30:30;
for i=-30:1:30
    if i==0
        y(i+31)=1;
    else 
        y(i+31)=0;
    end
end 
subplot(311)
stem(n,y);
legend(['del(n)']);
% del[n+12]
n=-30:30;
for i=-30:1:30
    if i==-12
        y(i+31)=1;
    else 
        y(i+31)=0;
    end
end 
subplot(312)
stem(n,y,'r');
legend(['del(n+12)']);

n=-30:30;
for i=-30:1:30
    if i==16
        y(i+31)=1;
    else 
        y(i+31)=0;
    end
end 
subplot(313)
stem(n,y,'g');
legend(['del(n-16)']);
