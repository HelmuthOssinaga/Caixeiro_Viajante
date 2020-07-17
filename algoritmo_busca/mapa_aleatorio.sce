
function [mapa] = mapa_aleatorio()

    a = 1;
    val = []
    posi = [];
    
    for l=1:1225
        quant = int(grand(1, 1, "unf", 10, 1000));
        [val] = [val quant] ;
    end
    
    for i=1:50
        for j=1:50
            //disp(a);
               if i == j then
                   mapa(i,j) = 0
            
               elseif j > i then
                    mapa(i,j)=val(a)
                    mapa(j,i)=val(a)
                    a = a+1;
                end                
        end
    end
    
    p = 1
    while p <=500
        posi = int(grand(1, 2, "unf", 1, 50));
        x = posi(1);
        y = posi(2);
        mapa(x, y) = 0;
        mapa(y, x) = 0;
        
        p = p+1;
    end
    
    
endfunction
