function s = sumPTDOCF(term,user,ca)
s = 0;
for i = 1 : size(user.sent,1)
   
    [c , a ] = N_t(user.sent(i),term);
    p = c./a;
    fi  =  f(user.sent(i), ca , 'DC' , user);
    s =  s + p*fi;
    
end



end