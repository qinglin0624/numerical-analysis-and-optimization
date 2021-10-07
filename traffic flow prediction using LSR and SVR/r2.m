function result = r2(y,y_pred)
    yresid = y - y_pred;
    SSresid = sum(yresid.^2);
    SStotal = (length(y)-1) * var(y);
    result = 1 - SSresid/SStotal;
    
%     shape = size(y);
%     N = shape(1);
%     one = N*(sum(y.*y_pred));
%     two = sum(y)*sum(y_pred);
%     three = N*sum(y_pred.^2)-sum(y_pred)^2;
%     four = N*sum(y.^2)-sum(y)^2;
%     result = (one - two)^2 / three / four;
    
end