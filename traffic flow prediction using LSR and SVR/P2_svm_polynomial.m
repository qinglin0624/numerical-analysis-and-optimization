function [performance,Mdl2] = P2_svm_polynomial()
%     rng default
    [train_x, train_y, test_x, test_y] = GetData();
    train_x = zscore(train_x);
    test_x = zscore(test_x);
    performance = zeros(4,10);
    ps = zeros(10,100);
    
%     for i=30:40
%         Mdl = fitrsvm(train_x,train_y,'KernelFunction','polynomial','KernelScale',2.47,'Epsilon',0.22,'BoxConstraint',521,'PolynomialOrder',i,'Solver','ISDA');
%         xx = linspace(0,24,100)';
%         xx = zscore(xx);
%         ps(i,:) = predict(Mdl,xx);
%         train_p = predict(Mdl,train_x);
%         performance(1,i) = mse(train_y,train_p);
%         performance(2,i) = r2(train_y,train_p);
%         test_p = predict(Mdl,test_x);
%         performance(3,i) = mse(test_y,test_p);
%         performance(4,i) = r2(test_y,test_p);
%     end
    
%     Mdl1 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','KernelScale',2.47,'Epsilon',0.22,'BoxConstraint',521,'PolynomialOrder',17,'Solver','ISDA');
%     % 3 is the dafault
%     train_p = predict(Mdl1,train_x);
%     performance(1,1) = mse(train_y,train_p);
%     performance(2,1) = r2(train_y,train_p);
%     test_p = predict(Mdl1,test_x);
%     performance(3,1) = mse(test_y,test_p);
%     performance(4,1) = r2(test_y,test_p);
   
    Mdl2 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','KernelScale',2.47,'Epsilon',0.22,'BoxConstraint',521,'PolynomialOrder',25,'Solver','ISDA');
    train_p = predict(Mdl2,train_x);
    performance(1,2) = mse(train_y,train_p);
    performance(2,2) = r2(train_y,train_p);
    test_p = predict(Mdl2,test_x);
    performance(3,2) = mse(test_y,test_p);
    performance(4,2) = r2(test_y,test_p);
     
%     Mdl3 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','KernelScale',2.47,'Epsilon',0.22,'BoxConstraint',521,'PolynomialOrder',30,'Solver','ISDA');
%     train_p = predict(Mdl3,train_x);
%     performance(1,3) = mse(train_y,train_p);
%     performance(2,3) = r2(train_y,train_p);
%     test_p = predict(Mdl3,test_x);
%     performance(3,3) = mse(test_y,test_p);
%     performance(4,3) = r2(test_y,test_p);
% 
%     Mdl4 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','KernelScale',2.47,'Epsilon',0.22,'BoxConstraint',521,'PolynomialOrder',35,'Solver','ISDA');
%     train_p = predict(Mdl4,train_x);
%     performance(1,4) = mse(train_y,train_p);
%     performance(2,4) = r2(train_y,train_p);
%     test_p = predict(Mdl4,test_x);
%     performance(3,4) = mse(test_y,test_p);
%     performance(4,4) = r2(test_y,test_p);
    
%     
%     Mdl4 = fitrsvm(train_x,train_y,'KernelFunction','polynomial');
%     train_p = predict(Mdl4,train_x);
%     performance(1,4) = mse(train_y,train_p);
%     performance(2,4) = r2(train_y,train_p);
%     test_p = predict(Mdl4,test_x);
%     performance(3,4) = mse(test_y,test_p);
%     performance(4,4) = r2(test_y,test_p);
    
    
    
% 
%     
%     Mdl5 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','PolynomialOrder',15,'Solver','ISDA');
%     train_p = predict(Mdl5,train_x);
%     performance(1,5) = mse(train_y,train_p);
%     performance(2,5) = r2(train_y,train_p);
%     test_p = predict(Mdl5,test_x);
%     performance(3,5) = mse(test_y,test_p);
%     performance(4,5) = r2(test_y,test_p);
%     
%     Mdl6 = fitrsvm(train_x,train_y,'KernelFunction','polynomial','PolynomialOrder',17,'Solver','ISDA');
%     train_p = predict(Mdl6,train_x);
%     performance(1,6) = mse(train_y,train_p);
%     performance(2,6) = r2(train_y,train_p);
%     test_p = predict(Mdl6,test_x);
%     performance(3,6) = mse(test_y,test_p);
%     performance(4,6) = r2(test_y,test_p);
    
%     ran
%     Mdl4 = fitrsvm(train_x,train_y, 'KernelFunction', 'polynomial', 'OptimizeHyperparameters','auto','HyperparameterOptimizationOptions', struct('AcquisitionFunctionName','expected-improvement-plus'));
%     train_p = predict(Mdl4,train_x);
%     performance(1,4) = mse(train_y,train_p);
%     performance(2,4) = r2(train_y,train_p);
%     test_p = predict(Mdl4,test_x);
%     performance(3,4) = mse(test_y,test_p);
%     performance(4,4) = r2(test_y,test_p);
end

