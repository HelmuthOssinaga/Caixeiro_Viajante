function [filhos] = expandirAtualizado(no, mapa, memoria)
    i = 1;
    vet = []
    filhos=[]
    
    tamanho = size(mapa); 
    
    //h = [380 374 366 253 176 329 193 244 100 241 242 160 77 0 80 151 161 199 226 234];
    
    for l =1:tamanho(1)
        if l == no(1,1) then
            while i<=tamanho(2)
                if mapa(l,i) <> 0 & i<>memoria(1,:) then
                     vet=[i; 2; mapa(l,i)+no(3,1); no(4,1)+1; mapa(l,i)+no(3,1)+h(i)];
         
                    [filhos] = [filhos vet];
                end       
                i=i+1;
            end
            
         end
    end
    
endfunction
