function [ret_str, rel_frec] = N_t (doc,term) 



words = {};
results = {};

if(~(strcmp(doc.content ,'')))
words = textscan(doc.content,'%s','Delimiter',' \b\t"()[]-/\\,^.;:!?');

%remove empty chars
for i = 1:numel(words{1,1})
    if size(words{1,1}{i,1}, 2) == 0
        words{1,1}{i,1} = ' ';
    end
end

%count frequency 
unique_words = unique(words{1,1});

freq = zeros(numel(unique_words), 1);

for i = 1:numel(unique_words)
    if max(unique_words{i} ~= ' ')
        for j = 1:numel(words{1,1})
            if strcmp(words{1,1}(j), unique_words{i})
                freq(i) = freq(i) + 1;
            end
        end
    end
end

ret_str = 0;
for i = 1:size(unique_words)
    if(strcmp(unique_words{i},term))
       ret_str = unique(freq(i));
    end
end

rel_frec = ret_str / size(unique_words,1);
else   
    display "Document empty";
end