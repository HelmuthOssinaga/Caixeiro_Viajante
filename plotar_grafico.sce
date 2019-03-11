function plotar_grafico(mapa, coordenadas)
    
    x = [];
    y = [];
    
    
    tam = size(coordenadas);
    
    
    for i=1:tam(1)
        //vizinhas = find(mapa(i,:)<>0);
        //disp('vizinho');
        //disp(vizinhas);
        //pause
        
        
        [x] = [x coordenadas(i,2) ];
        //disp('Eixo X');
        //disp(x);
        //pause
        
        [y] = [y coordenadas(i,3) ];
        //disp('Eixo Y');
        //disp(y);
        //pause
        
        [x] = [x coordenadas(1,2)];
        [y] = [y coordenadas(1,3)];
        
        //cont = size(vizinhas);
        //j = 1;
        
        //while j <= cont(2)
            
            //[x] = [x coordenadas(vizinhas(j),2) ];
            //[y] = [y coordenadas(vizinhas(j),3) ];
            
            //j = j+1;
        //end
        
    end
    
    unzoom(plot(x,y));
    
    
endfunction
