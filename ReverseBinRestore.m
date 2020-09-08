function [output, outputchar] = ReverseBinRestore(m, array)
if ischar(array)
    array = array-'0';
end
map = GetMap(m);
output = map(array+1,:);
output = reshape(output',1,[]);
outputchar = char(output+'0');
end