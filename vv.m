t = 0:0.03:1;
f = 0:1/1024:(152-1)/1024;
n =  0:0.1:2;
mt = cos(2*pi*t);
Mt = cos(2*pi*t/(8000));
x = sin((2*pi) * (18000/4*t)) .* mt.*Mt;

stem(x)

%% 
s=[3 4 5 6 8];
plot(s)

%Figura compuesta
figure
stem(s)

%stem(y)
clear all
%%
N=40; F=[0, .2 .4 .6 .8 1];A=[1 1 1 0 0 0];
% plot(F,A)
grid
B = FIR2(N,F,A);
stem(B)
%%
[n,fo,mo,w] = firpmord( [1500 2000], [1 0], [0.01 0.1], 8000 );
h = firpm(n,fo,mo,w);

n

[G,w]=freqz(h,1);
plot(w/pi,20*log10(abs(G))), grid, legend  ('G')


%C=fft(h,1024);
%plot(f,abs(C(1:152)))
stem(h)
v=length(h);
v
%% 
%% 
% 
% function S = convolucion_disc(h,x)
% nh = length(h);
% nx = length(x);
% % preasignando variables:
% y = zeros(nx,nh);
% Y = zeros(nx,nx+nh-1);
% S = zeros(1,nx+nh-1);
% % creando matriz:
% for j = 1:nx
%     for i = 1:nh
%         y(j,i) = h(i)*x(j);
%     end
%     Y(j,j:j-1+nh) = y(j,:);
% end
% % sumando:
% for l = 1:nx + nh - 1;
%     S(l) = sum(Y(:,l));
% end
% S = [Y;S];
