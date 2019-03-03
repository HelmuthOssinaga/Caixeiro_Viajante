function [filhos] = expandirAtualizado(no, mapa, memoria)
    i = 1;
    vet = []
    filhos=[]
    
    h = [10 15 25 35 45];
    
    disp(no);
    pause
    
    if no(1,1) == 1 then
       //cidades = find(mapa(1,:)<>0)
       //disp(cidades)
       //tam = size(cidades)
       
       while i<=5
           if mapa(1,i) <> 0 & i<>memoria(1,:) then
                 vet=[i; 2; mapa(1,i)+no(3,1); no(4,1)+1; mapa(1,i)+no(3,1)+h(i)];
         
                [filhos] = [filhos vet];
            end
           
            i=i+1;
        end
    end
    
    
    //Segunda Linha
    
    if no(1,1) == 2 then
       while i<=5
           if mapa(2,i) <> 0 & i<>memoria(1,:) then
                 vet=[i; 2; mapa(2,i)+no(3,1); no(4,1)+1;mapa(2,i)+no(3,1)+h(i)];
              
              [filhos] = [filhos vet];
            end
           
            i=i+1;
        end
    end
    
    
    //Terceira Linha
    
    if no(1,1) == 3 then
       while i<=5
           if mapa(3,i) <> 0 & i<>memoria(1,:) then
                  vet=[i; 2; mapa(3,i)+no(3,1); no(4,1)+1;mapa(3,i)+no(3,1)+h(i)];
                  
           [filhos] = [filhos vet];
            end
           
            i=i+1;
        end
    end
    
    //Quarta Linha
    
    if no(1,1) == 4 then
       while i<=5
           if mapa(4,i) <> 0 & i<>memoria(1,:) then
                  vet=[i; 2; mapa(4,i)+no(3,1); no(4,1)+1;mapa(4,i)+no(3,1)+h(i)];

           [filhos] = [filhos vet];
            end
           
            i=i+1;
        end
    end
    
    //Quinta Linha
    
    if no(1,1) == 5 then
       while i<=5
           if mapa(5,i) <> 0 & i<>memoria(1,:) then
                  vet=[i; 2; mapa(5,i)+no(3,1); no(4,1)+1;mapa(5,i)+no(3,1)+h(i)];

           [filhos] = [filhos vet];
            end
           
            i=i+1;
        end
    end
    
endfunction
