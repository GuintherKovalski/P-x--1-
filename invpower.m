function [num1 den1] = invpower(num,den)
if ~isvector(num)
    error('Input must be a vector')
end

if ~exist('den','var')
     % third parameter does not exist, so default it to something
     den=1;
end
invp=tf(conv([1 0],fliplr(num)),fliplr(den));
[num1,den1] = tfdata(invp,'v');  
p = poly2sym(num1)/poly2sym(den1)
end
