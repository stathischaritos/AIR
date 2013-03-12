function set = D(ca,data)
set = [];
for i = 1:size(data,1)
    if(Assoc(Data(i),ca)) set = [set ; Data(i)];
    end
end
end
