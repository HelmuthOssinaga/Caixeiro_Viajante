function lembre = Verificar(memoria, no)
    tamanho = size(memoria);
    
    lembre = 0;
    i = 1;
    
    while i<= tamanho(2) & lembre == 0
        if memoria(:, i) == no(:,1) then
            lembre = 1;
        end
        i = i+1;
    end
endfunction
