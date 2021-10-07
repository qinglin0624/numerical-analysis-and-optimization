function A=PolynomialTransform(n,a)
    shape=size(a);
    A=zeros(shape(1),n);
    for i=0:n
        A(:,i+1)=a.^i;
    end
end

% function A = PolynomialTransform(n,xdata)
% A=[];
% len = length(xdata);
% for index = 1:len
%     feature = [1];
%     for i  = 1:n
%         feature(end+1) = xdata(index)^i;
%     end 
%     A(end+1,:) = feature;
% end 