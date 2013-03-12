% COUNTWORDS Count the occurences of words in text files
%    CNT = COUNTWORDS(DIR)
%
%    Create a list of all the words (case insensitive, and removing
%    special characters and numbers) and counts in how many of the files
%    they occurred.
%
%    Parameters:
%       DIR    - The directory containing the files we want
%
%    Returns:
%       CNT    - A structure with the number of files that contained each word
%       NUM    - The total number of files processed

function [CNT,NUM] = countwords(DIR)
  FILES = dir(DIR);
  NUM = size(FILES,1)-2;
  CNT = [];                     % initialise the variable
  
  % Step through the list of files and keep a list of the words in
  % each file. We are counting the number of files that contain a word,
  % so if a word occurs more than once in a file, it should be counted
  % only once.   
  for n = 3:size(FILES,1)
%    FILES(n).name
    % Read the file and keep track of the words it contains
    text = textread([DIR '/' FILES(n).name], '%s', 'whitespace', ' \b\t"()[]-/\\,^.;:!?');
%                    )
    NW = size(text,1);
    FCNT=[];
    for i = 1:NW
      text{i} = regexprep(text{i},'@','at');
      text{i} = regexprep(text{i},'[1-9'']','x');
      if regexp(text{i},'[0-9&''@#%~+-*/=<>$_|{}]')
%        text{i}
      else
        str = upper(text{i});
        if ~isfield(FCNT,str)
          FCNT.(str) = 1;
        end
      end
    end

    % Now we need to integrate the counts from different files
%    )))
    if size(FCNT)
      CNT = merge_ws(CNT,FCNT);
    end
  end  
end
