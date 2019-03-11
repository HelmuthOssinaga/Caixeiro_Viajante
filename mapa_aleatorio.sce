function [mapa] = mapa_aleatorio( n )
    
    a = 1
    val = []
    form = ((n*n)-n)/2
    
    for l=1:form
        quant = int(rand()*100);
        [val] = [quant val] ;
    end
    
    for i=1:n
        for j=1:n
               if i==j then
                    mapa(i,j)=0;
                else
                    mapa(i,j)=val(a)
                    mapa(j,i)=val(a)
                end
        end
        a = a+1;
    end
    
    
    for r=1:n
        for s=r+1:n
               mapa(r,s+1:n)=0;
               mapa(s+1:n,r)=0;
        end
    end
    
    
    
    
endfunction
