function [mapa] = mapa_aleatorio()
    
    k = 1;
    val = [];
    
    for l=1:10
        [val] = [int(rand()*100) val];
    end
    
    for i=1:5
        for j=1:5
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
