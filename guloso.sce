function [no, borda] = guloso(borda)    
    tamanho = size(borda)
    menor = min(borda(5,:))
    i = 1
    bug = 1
    
    while i<=tamanho(2) & bug == 1
        
         if borda(5,i) == menor then
            [no] = borda(:,i)
            borda(:,i) = []
            bug = 0
         else
             i = i+1
         end
    end
    
    
endfunction
