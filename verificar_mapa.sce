function ret = verificar_mapa(mapa)
    
    ret = 1;
    
    for i=1:5
        for j=1:5
            if j>i then
                if mapa(i,j)==0 then
                     ret = 0;
                 end
              end
        end    
    end
    
endfunction
