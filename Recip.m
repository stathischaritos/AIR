function r = Recip(doc)
%returns the set of all recipients of message doc.
r = [doc.TO ; doc.CC ; doc.BCC];
end