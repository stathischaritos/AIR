function p_q = model1(q,user,ca)

lamda = 0.5;
factor = 1;
terms = textscan(q.content,'%s','Delimiter',' \b\t"()[]-/\\,^.;:!?');
terms = terms{1}
for i = 1 : size(q,1)
    term = q.content
    [a , b ] = N_t(q,terms(i));
    n = a/b;
    factor = factor * ( (1-lamda) * sumPTDOCF(terms(i),user,ca) + lamda*maxlike1(terms(i),user.sent)).^n;
end

p_q = factor
end