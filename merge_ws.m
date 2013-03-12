% MERGE_WS Merge word structs
%    M = MERGE_WS(S1,S2)
%
%    Create a new structure that contains the fields of
%    both original structures, and adds the fields' values
%
%    Parameters:
%       S1   - The first struct
%       S2   - The first struct
%
%    Returns:
%       M    - The merged result

function M = merge_ws(S1,S2)
  M = S1;
  fields = fieldnames(S2);
  for i=1:size(fields,1)
    if isfield(M,fields{i})
      M.(fields{i}) = M.(fields{i}) + S2.(fields{i});
    else
      M.(fields{i}) = S2.(fields{i});
    end
  end
end
