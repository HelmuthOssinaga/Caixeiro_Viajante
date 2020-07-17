function fine = armazenarGuloso(sol, nodes)
    resultadofinal = mopen('gulosoFinal.txt','w');

   i = 1;
   ni = [];
   
   mat = [sol nodes];//juntou as matrizes
   //disp(mat);
   //pause;
   
   [ni] = [ni sol(1,1)];
   //disp(ni);
   
    while i<=1000
        if ni(:,1)<>sol(i,1) then
          [ni] = [ni; sol(i,1)];
        end
        i = i+1;
    end
    
    //disp(ni);
    //pause
    
    tama = size(ni);
    
    i=1;
    col_nivel = [];
    
    while i<=tama(1);
        valor_zero = 0;
        
       [col_nivel] = [col_nivel; 0];
        
        i = i+1;
    end
    
    [ni] = [ni col_nivel];
    [ni] = [ni col_nivel];
    
    i=1;
    
    p_qnp = [];
    
    while i<=1000
       [p_qnp] = find(sol(i,1) == ni(:,1));
       ni(p_qnp,3) = ni(p_qnp,3) + 1;
    
    i = i+1;   
    end
    
    //disp(ni);
    //pause
    
    pos = [];
    i=1;
    while i<=1000
        
       [pos] = find(mat(i,1) == ni(:,1));
        ni(pos,2) = ni(pos,2) + mat(i,2);
        
        i = i+1;
    end
    
    j = 1;
    
    //disp(ni);
    
    Size = size(ni);
    
    while j<=Size(1)
        mfprintf(resultadofinal, '%d %d %d %.2f\n', ni(j,1),ni(j,2),ni(j,3),ni(j,2)/ni(j,3));
        j=j+1;        
    end
    
    mclose(resultadofinal);
    
    fine = 1;
    
endfunction
