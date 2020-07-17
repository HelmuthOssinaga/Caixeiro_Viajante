function [filhos] = expandirAtualizado(no, mapa, memoria, coordenadas, destino)
    i = 1;
    vet = []
    filhos=[]
    heuristicas = []
    
    //disp(no);
    
    tamanho = size(mapa);
    //disp(tamanho)
    
    [heuristicas] = gerar_heuristica(coordenadas, destino)
    //disp(heuristicas);
    
    for l =1:tamanho(1)
        if l == no(1,1) then
            while i<=tamanho(2)
                if mapa(l,i) <> 0 & i<>memoria(1,:) then
                     vet=[i; 2; mapa(l,i)+no(3,1); no(4,1)+1; mapa(l,i)+no(3,1)+heuristicas(i)];
         
                    [filhos] = [filhos vet];
                end       
                i=i+1;
            end
            //disp(filhos);
         end
    end
    
endfunction
