function [Xn tfinal] = StemXN(m,n,l)

    alfa = m / (m+l);
    tvector = [];
    
    for i = 1:(n*(m+l))
       tvector = [tvector alfa]; 
    end

    vectores = round(10 * rand(n,m));
    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 

    
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
   
    
    
    f = [];    
    
    for i = 1:n        
        vectorM = vectores(i,:);
        vectorL = subvector(vectorM,l);
        nv = [vectorL vectorM];        
        f = [f,nv];   
       
    end
    tfinal = tvector;
    Xn = f;
    
return

