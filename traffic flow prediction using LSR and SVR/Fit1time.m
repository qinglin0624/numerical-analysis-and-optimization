function [x,performance,avg,sd,train_pred,test_pred] = Fit1time(n)
    [train_x, train_y, test_x, test_y] = GetData();
    
    performance = zeros(4,1);
    A = PolynomialTransform(n,train_x);
    avg = mean(A,1);
    sd = std(A,1);
    A = my_standardize(A,avg,sd);
    x = lsqr(A,train_y,1e-8,70);
    train_pred = A * x;
    performance(1,1) = mse(train_y,train_pred);
    performance(2,1) = r2(train_y,train_pred);
    B = PolynomialTransform(n,test_x);
    B = my_standardize(B,avg,sd);
    test_pred = B * x;
    performance(3,1) = mse(test_y,test_pred);
    performance(4,1) = r2(test_y,test_pred);
    %disp(x);
end

