function final = principal( n )
    mapa = [];
    coordenadas = [];
    borda = [];
    
    aleatorio = 1;
    
    while aleatorio == 1
        [mapa] = mapa_aleatorio( n );
        
        if verificar_mapa( mapa ) == 1 then
            aleatorio = 0;
        end
    end    
        [coordenadas] = gerar_coordenadas( n );
        
        plotar_grafico(mapa, coordenadas);
        
        partida = input('Insira o seu ponto de partida');
        destino = input('Insira o seu ponto de destino');
        
        final = BuscaGeral(mapa, partida, coordenadas, destino, borda);
    
    
endfunction
