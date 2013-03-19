function set1 = D(ca,data)
set1 = [];
for i = 1:size(data,1)
    if(Assoc(data(i),ca)) set1 = [set1 ; data(i)];
    end
end
end
