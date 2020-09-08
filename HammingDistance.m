function HammingDistance=HammingDistance(arr)
tuple = cell2mat({ 1 0 0 0 ; 1 1 1 1 ; 0 0 0 0});
n = sum(xor(tuple,arr),2); %calculates hamming distance differences
[minn, ~]=min(n);
HammingDistance=tuple(n==minn,:);
%hamming distance between array a and b is
%sum(abs(a-b))
%for a b binary, abs(a-b) is xor(a,b). Just write down the 2 x 2 table to see
%xor | 0 1
%----+-----
 % 0 | 0 1
 % 1 | 1 0
end