function ret = verificar_mapa(mapa)
    
    tamanho = size(mapa);
    
    ret = 1;
    
    for i=1:tamanho(1)
        if mapa(i,:) == 0 then
            ret = 0;
        end
    end
    
endfunction
