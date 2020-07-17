function [heuristicas] = gerar_heuristica(coordenadas, destino)
    heuristicas = [];
    
    tam = size(coordenadas);
    
    for i=1:tam(1)
        if i == destino then
            [heuristicas] = [heuristicas 0];
        else
            a = coordenadas(destino,2) - coordenadas(i,2);
            b = coordenadas(destino,3) - coordenadas(i,3);
            
            h = (a*a) + (b*b);
            
            val = int(sqrt(h)*3);
            
            [heuristicas] = [heuristicas val];
        end
    end
    
endfunction
