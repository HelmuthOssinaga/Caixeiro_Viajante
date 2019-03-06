function [heuristicas] = gerar_heuristica(coordenadas, destino)
    
    tam = size(coordenadas);
    
    for i=1:tam(1)
        if i == destino then
            [heuristicas] = [heuristicas 0];
        else
            h = (coordenadas(i,2)*coordenadas(i,2)) + (coordenadas(i,3)*coordenadas(i,3));
            val = int(sqrt(h)*5);
            [heuristicas] = [heuristicas val];
        end
    end
    
endfunction
