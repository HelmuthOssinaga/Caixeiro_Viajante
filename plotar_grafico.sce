function plotar_grafico(mapa, coordenadas)
    
    x = [];
    y = [];
    
    i = 1;
    tam = size(coordenadas)
    
    while i<=tam(1)
        
        [x] = [x coordenadas(i,2)];
        [y] = [y coordenadas(i,3)];
        
        if mapa(i,:) <> 0 then
            vizinhos = []
            [vizinhos] = [mapa(i,:)<>0 vizinhos];
            
            qnt_v = size(vizinhos);
            
            for j=1:qnt_v(2)
                [x] = [x coordenadas(j,2)];
                [y] = [y coordenadas(j,3)];
            end
        end
        
        plot(x,y);
        
        i=i+1;
    end
    
    
endfunction
