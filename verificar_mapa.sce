function ret = verificar_mapa(mapa)
    
    tamanho = size(mapa);
    
    ret = 1;
    
    for i=1:tamanho(1)
        for j=1:tamanho(2)
            if j>i then
                if mapa(i,j)==0 then
                     ret = 0;
                 end
              end
        end    
    end
    
endfunction
