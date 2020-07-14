function [coordenadas] = gerar_coordenadas( n )
    for i=1:n
        coordenadas(i,1) = i;
        coordenadas(i,2) = int(rand()*10);
        coordenadas(i,3) = int(rand()*10);
    end


endfunction
