function final = principal()
    i = 1;
    
    sol = [];
    nodes = [];

    a_sol = [];
    a_nodes = [];
    
    a_solP = [];
    a_nodesP = [];
    
    a_solLar = [];
    a_nodesLar = [];
    
    a_solG = [];
    a_nodesG = [];
   
  while i<=1000 then   
    mapa = [];
    coordenadas = [];
    borda = [];
    
    aleatorio = 1;
    
    while aleatorio == 1
        [mapa] = mapa_aleatorio();
        //disp(mapa);
        
        if verificar_mapa( mapa ) == 1 then
            aleatorio = 0;
        end
    end    
        [coordenadas] = gerar_coordenadas();
        
        //plotar_grafico(mapa, coordenadas);
        
        partida = 3;
        destino = 41;
        
           // ESTRATÉGIA A*
        [sol, nodes] = BuscaGeral(mapa, partida, coordenadas, destino, borda);
        
        [a_sol] = [a_sol; sol];
        [a_nodes] = [a_nodes; nodes];
//-----------------------------------------------------------------------

          // ESTRATÉGIA PROFUNDIDADE
          
          [solP, nodesP] = BuscaGeralProfundidade(mapa, partida, coordenadas, destino, borda);
          
          [a_solP] = [a_solP; solP];
          [a_nodesP] = [a_nodesP; nodesP];
// -----------------------------------------------------------------------------------

          // ESTRATÉGIA LARGURA
          
          [solLar, nodesLar] = BuscaGeralLargura(mapa, partida, coordenadas, destino, borda);
          
          [a_solLar] = [a_solLar; solLar];
          [a_nodesLar] = [a_nodesLar; nodesLar];
// -----------------------------------------------------------------------------------


          // ESTRATÉGIA GULOSO
          
          [solG, nodesG] = BuscaGeralGuloso(mapa, partida, coordenadas, destino, borda);
          
          [a_solG] = [a_solG; solG];
          [a_nodesG] = [a_nodesG; nodesG];
// -----------------------------------------------------------------------------------

        i = i+1;
    end
   
    // ARMAZENAR A*
    armazenar(a_sol, a_nodes);

    // ARMAZENAR PROFUNDIDADE
    armazenarProfundidade(a_solP, a_nodesP);
    
    // ARMAZENAR LARGURA
    armazenarLargura(a_solLar, a_nodesLar);
    
    // ARMAZENAR GULOSO
    armazenarGuloso(a_solG, a_nodesG);
    
    final = 1;
    
endfunction
