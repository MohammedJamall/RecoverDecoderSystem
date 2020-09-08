function ret=DirectSequenceSpreadSpectrum(m,array)
% returns binary decoded array values from input encoded array
% multiple     Mapped Value = 0         Mapped Value= 1
%   1                     0                       1
%   2                    00                      11
%   4                  1100                    0011
%   8              11001100                00110011
  ret=[];
  switch m
      case 1
          l=[0;1];
          for k=1:length(array)
              ret=[ret,find(ismember(l,array(k)))-1];
          end
      case 2
          l=[0 0;1 1];
          array=reshape(array,2,[])';
          for k=1:size(array,1)
              ret=[ret,find(ismember(l,array(k,:),'rows'))-1];
          end
      case 4
          l=[1 1 0 0;0 0 1 1];
          array=reshape(array,4,[])';
          for k=1:size(array,1)
              ret=[ret,find(ismember(l,array(k,:),'rows'))-1];
              HammingDistance(ret);
          end
      case 8
          l=[1 1 0 0 1 1 0 0;0 0 1 1 0 0 1 1];
          array=reshape(array,8,[])';
          for k=1:size(array,1)
              ret=[ret,find(ismember(l,array(k,:),'rows'))-1
              HammingDistance(ret);
          end
  end
end