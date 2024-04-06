clear all
clc

syms s
% G = (s+0.15)/(s^2+0.7*s+1)

num = [1,0.15];
den = [1,0.7,1];

G = tf(num,den);

H = 1;

Kp = 0.3492;
Ki = 0.003943;
Kd = 3.689;

C = pid(Kp,Ki,Kd);

T = feedback(C*G,H);

step(T)

S = stepinfo(G)