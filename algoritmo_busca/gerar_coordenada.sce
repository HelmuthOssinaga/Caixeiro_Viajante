function [coordenadas] = gerar_coordenadas()
    for i=1:50
        coordenadas(i,1) = i;
        coordenadas(i,2) = int(rand()*10);
        coordenadas(i,3) = int(rand()*10);
    end


endfunction
