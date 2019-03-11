/*
mapa = [0 71  0 151 0  0   0  0   0  0   0  0   0  0  0   0  0 0   0 0;
       71  0 75  0  0  0   0  0   0  0   0  0   0  0  0   0  0 0   0 0; 
        0 75  0 140 0 118  0  0   0  0   0  0   0  0  0   0  0 0   0 0; 
      151 0 140 0  99  0  80  0   0  0   0  0   0  0  0   0  0 0   0 0;
       0  0  0  99  0  0   0  0   0  0   0  0   0 211 0   0  0 0   0 0;
       0  0 118  0  0  0   0 111  0  0   0  0   0  0  0   0  0 0   0 0;
       0  0  0  80  0  0   0  0   97 0   0  146 0  0  0   0  0 0   0 0;
       0  0  0   0  0 111  0  0   0 70   0  0   0  0  0   0  0 0   0 0;
       0  0  0   0  0  0  97  0   0  0   0  138 0 101 0   0  0 0   0 0;
       0  0  0   0  0  0   0 70   0  0  75  0   0  0  0   0  0 0   0 0;
       0  0  0   0  0  0   0  0   0 75  0  120  0  0  0   0  0 0   0 0;
       0  0  0   0  0  0  146 0  138 0 120  0   0  0  0   0  0 0   0 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0 90  0   0  0 0   0 0;
       0  0  0  211 0  0   0  0  101 0  0   0  90  0 85   0  0 0   0 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0 85  0   98 0 142 0 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0  0 98   0 86 0   0 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0  0  0  86  0 0   0 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0  0 142  0  0 0  92 0;
       0  0  0   0  0  0   0  0   0  0  0   0   0  0  0   0  0 92  0 87;
       0  0  0   0  0  0   0  0   0  0  0   0   0  0  0   0  0 92 87 0]

*/
//partida = 1
//destino = 4
//borda = []

function resultado = BuscaGeral(mapa,partida, coordenadas, destino, borda)
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
            [filhos] = expandirAtualizado(no, mapa, memoria, coordenadas, destino);
          //  disp('filhos')
            //disp(filhos)
            //pause
            
            [borda] = InserirNo(filhos, borda);
            //disp(borda);
            //pause
        end
    end
    
    
endfunction
