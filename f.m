function result = f(doc,ca,mode,user)
sumo = 0;
data = user.sent;
cand = user.book;

if(strcmp(mode,'DC'))
    for i = 1 : size(data,1)
        if(data(i).id ~= doc.id)
        sumo = sumo + Assoc(data(i),ca);
        end
        r = Assoc(doc,ca)/sumo;
    end
elseif(strcmp(mode,'UC'))
   for i = 1 : size(cand,1)
        if(~strcmp(cand(i),ca))
        sumo = sumo + Assoc(doc,cand(i));
        end
        r = Assoc(doc,ca)/sumo;
    end 
end
result = r;

end