function [nodes, contador]  = BuscaGeralProfundidade(mapa,partida, coordenadas, destino, borda)

    node = [];
    resultado = 1;
    filhos = [];
    memoria = [];
    contador = 1;
    
    [node]=CriarNo(partida);
    [borda] = InserirNo(node, borda);
        
    while resultado<>0
        if borda ==[] then
            resultado = 0;
            break;
        end
        
        no = [];
        
        [no, borda] = RemovePrimeiroProfundidade(borda);
        
        lembre = Verificar(memoria, no);
        
        while lembre ==1
            [no, borda] = RemovePrimeiro(borda);
            lembre = Verificar(memoria, no);
        end
        
        if no(1,1) == destino then
            disp('Chegou!');
            disp(no);
            
            disp('Quantidade de nós: ');
            disp(contador);
            
            nodes = no(4,1);
            
            //mfprintf(nivel_Largura,'%d\n',no(4,1));
            //mfprintf(quant_nos,'%d\n',contador);
            
            resultado = 0;
        else
            memoria = [memoria no];
            
            //disp(memoria);
            //pause
            //disp(no)
            //pause
            [filhos] = expandirAtualizado(no, mapa, memoria, coordenadas, destino);
            //disp('filhos')
            //disp(filhos)
            //pause
            quant_filhos = size(filhos);
            
            contador = contador + quant_filhos(2);
            
            [borda] = InserirNo(filhos, borda);
            //disp(borda);
            //pause
        end
    end
    
    
endfunction
