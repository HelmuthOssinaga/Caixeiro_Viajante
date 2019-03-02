function [no, borda] = RemovePrimeiro(borda)
    [tamanho] = size(borda);
    coluna = tamanho(2);
    
    //metodo Pilha
    
    [no] = borda(:,coluna);
    borda(:,coluna)=[];
    
    
endfunction
