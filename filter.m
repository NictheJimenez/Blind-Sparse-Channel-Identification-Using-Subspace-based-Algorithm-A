  [n,fo,mo,w] = firpmord( [1500 2000], [1 0], [0.01 0.1], 8000 );
h = firpm(n,fo,mo,w);
