//mapa = [0 10 15 25 35; 10 0 20 30 45; 15 20 0 40 50; 25 30 40 0 55; 35 45 50 55 0]
//partida = 1
//destino = 4
//borda = []

function resultado = BuscaGeral(mapa,partida, destino, borda)
    node = [];
    resultado = 1;
    filhos = [];
    memoria = [];
    
    [node]=CriarNo(partida);
    [borda] = InserirNo(node, borda);
        
    //disp(borda);
    //pause
        
    while resultado<>0
        if borda ==[] then
            resultado = 0;
        end
        no = [];
        //disp(borda)
        [no, borda] = guloso(borda);
        
        //disp(no);
        //pause
        
        lembre = Verificar(memoria, no);
        
        while lembre ==1
            [no, borda] = RemovePrimeiro(borda);
            lembre = Verificar(memoria, no);
        end
        
        if no(1,1) == destino then
            disp('Chegou!');
            disp(no);
            resultado = 0;
        else
            memoria = [memoria no];
            
            //disp(memoria);
            //pause
            //disp(no)
            //pause
            [filhos] = expandirAtualizado(no, mapa, memoria);
          //  disp('filhos')
          //  disp(filhos)
          //  pause
            
            [borda] = InserirNo(filhos, borda);
            //disp(borda);
            //pause
        end
    end
    
    
endfunction
