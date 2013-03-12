function a = Assoc(doc,ca)

% The association function
% a(doc, ca) returns 1 if and only if ca is one of the recipients (TO, CC or BCC)
% of message doc, otherwise it returns zero.

list = Recip(doc);
a = 0;
for i = 1 : size(list,1)
    if(strcmp(ca,list(i))
        a = 1;
        return;
    end
end

end