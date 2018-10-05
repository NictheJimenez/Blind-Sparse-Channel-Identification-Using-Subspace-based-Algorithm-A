function  Hk=fircc()
%[n,fo,mo,w] = firpmord( [1500 2000], [1 0], [0.01 0.1], 8000 );
%H = firpm(n,fo,mo,w);
H = [1 2 3 0 0];
toeplitz(H)
Hk=H;

return;

