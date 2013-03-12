% WORDSTABLE Construct tables with words and counts from structs
%    [WORDS,COUNTS] = WORDTABLE(S1,S2)
%
%    Reorganise the structures used to count the occurance of words
%    in tables, in order to simplify calculations
%
%    Parameters:
%       S1  - A structure containing word counts
%       S2  - Same thing
%
%    Returns:
%       WORDS  - A cell array containing the words
%       COUNTS - The corresponding file counts of both structures

function [WORDS,COUNTS] = wordtable(S1,S2)
  M = merge_ws(S1,S2);

  WORDS = sort(fieldnames(M));
  L = size(WORDS,1);
  COUNTS = zeros(L,2);
  for i=1:L
    if isfield(S1,WORDS{i})
      COUNTS(i,1) = S1.(WORDS{i});
    end
    if isfield(S2,WORDS{i})
      COUNTS(i,2) = S2.(WORDS{i});
    end
  end
end
