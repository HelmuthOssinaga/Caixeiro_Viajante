function [no, borda] = RemovePrimeiroProfundidade(borda)
    [tamanho] = size(borda);
    coluna = tamanho(2);
    
    //[no] = borda(:,1);
    //borda(:,1)=[];
    
    //metodo Pilha
    
    [no] = borda(:,coluna);
    borda(:,coluna)=[];
    
    
endfunction
