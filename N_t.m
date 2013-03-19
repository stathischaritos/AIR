function [ret_str, all_words] = N_t (doc,term) 



words = {};


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

freq = 0;
  
for j = 1:numel(words{1,1})
  if strcmp(words{1,1}(j), term)
     freq = freq + 1;
  end
      
end

ret_str = freq;

all_words = size(unique_words,1);
%rel_frec = ret_str / size(unique_words,1);
else   
    all_words =1;
    ret_str = 0;
end