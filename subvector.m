function vresult = subvector(m,l)

    [a b] = size(m);   
    
    c = (b-l);
    
    mask = [];
    
    for i = (c+1):b
      s = m(i);
      mask = [mask,s]; 
    end

    vresult = mask;
    
return;
