function [performance,Mdl2] = P2_svm_linear()

    [train_x, train_y, test_x, test_y] = GetData();
    performance = zeros(4,4);
    
%     Mdl1 = fitrsvm(train_x,train_y,'KernelFunction','linear','Solver','SMO','BoxConstraint',18, 'KernelScale',12, 'Epsilon',0.01);
%     train_p = predict(Mdl1,train_x);
%     performance(1,1) = mse(train_y,train_p);
%     performance(2,1) = r2(train_y,train_p);
%     test_p = predict(Mdl1,test_x);
%     performance(3,1) = mse(test_y,test_p);
%     performance(4,1) = r2(test_y,test_p);
    
    Mdl2 = fitrsvm(train_x,train_y,'KernelFunction','linear','Solver','SMO','BoxConstraint',19, 'KernelScale',12, 'Epsilon',0.01);
    train_p = predict(Mdl2,train_x);
    performance(1,2) = mse(train_y,train_p);
    performance(2,2) = r2(train_y,train_p);
    test_p = predict(Mdl2,test_x);
    performance(3,2) = mse(test_y,test_p );
    performance(4,2) = r2(test_y,test_p);
    
%     Mdl3 = fitrsvm(train_x,train_y,'KernelFunction','linear','Solver','SMO','BoxConstraint',20, 'KernelScale',12, 'Epsilon',0.01);
%     train_p = predict(Mdl3,train_x);
%     performance(1,3) = mse(train_y,train_p);
%     performance(2,3) = r2(train_y,train_p);
%     test_p = predict(Mdl3,test_x);
%     performance(3,3) = mse(test_y,test_p);
%     performance(4,3) = r2(test_y,test_p);
%     
%     Mdl4 = fitrsvm(train_x,train_y,'KernelFunction','linear','Solver','SMO','BoxConstraint',21, 'KernelScale',12, 'Epsilon',0.01);
%     train_p = predict(Mdl4,train_x);
%     performance(1,4) = mse(train_y,train_p);
%     performance(2,4) = r2(train_y,train_p);
%     test_p = predict(Mdl4,test_x);
%     performance(3,4) = mse(test_y,test_p);
%     performance(4,4) = r2(test_y,test_p);
    
%     Mdl4 = fitrsvm(train_x,train_y, 'KernelFunction', 'linear', 'OptimizeHyperparameters','auto','HyperparameterOptimizationOptions', struct('AcquisitionFunctionName','expected-improvement-plus'));
%     train_p = predict(Mdl4,train_x);
%     performance(1,4) = mse(train_y,train_p);
%     performance(2,4) = r2(train_y,train_p);
%     test_p = predict(Mdl4,test_x);
%     performance(3,4) = mse(test_y,test_p);
%     performance(4,4) = r2(test_y,test_p);
end

