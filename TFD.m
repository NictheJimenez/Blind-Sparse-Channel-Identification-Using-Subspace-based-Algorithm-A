function [Bf fftXn fftHn fftBn ]=TFD(Xn,Hk,convc)

fftX=fft(Xn);
fftH=fft(Hk);
fftB=fft(convc);
Bn=fftX*fftH;

Bf=Bn;
fftXn=fftX;
fftHn=fftH;
fftBn=fftB;
return;