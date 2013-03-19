function p = maxlike1(term, sent)

countterm = 0;
countwords = 0;
for i = 1 : size(sent,1)

    countt = 0;
    countw = 0;
    [countt , countw] = N_t(sent(i),term);
    countterm = countterm + countt;
    countwords = countwords + countw;
end
    
p = countterm./countwords;

    
end
