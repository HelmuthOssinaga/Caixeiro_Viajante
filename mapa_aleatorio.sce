function [mapa] = mapa_aleatorio( n )
    
    k = 1;
    val = [];
    
    form = ((n*n)-n)/2;
    
    for l=1:form
        [val] = [int(rand()*100) val];
    end
    
    for i=1:n
        for j=1:n
               if i==j then
                    mapa(i,j)=0;
                elseif j>i then
                    mapa(i,j)=val(k);
                    mapa(j,i)=val(k);
                
                k = k+1;
                  end
        end
    end
    
    
    
    
endfunction
