function res = maxlike1(term, sender, location, option)

text = {''};

    if(strcmp(option,'col'))
        for i=1:size(location,1)
            if (strcmp(location(i).sender, sender))
                text = strcat(text, ' ' , location(i).content);
            end
        end
        
    else
            
          text = sender
          field = 'content';
          value = text{1}
          s = struct(field,value);
    end    
    

      [arg,res] = N_t(s,term);
    
   
    
     
end
