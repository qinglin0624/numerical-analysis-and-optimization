format long g
[performance1,Mdl1] = P2_svm_linear();
[performance2,Mdl2] = P2_svm_gaussian();
[performance3,Mdl3] = P2_svm_polynomial();

n=18;
[x,performance4,avg,sd,train_pred,test_pred] = Fit1time(n);
A = PolynomialTransform(n,xx);
A = my_standardize(A,avg,sd);

figure;

[train_x, train_y, test_x, test_y] = GetData();
% train_x = zscore(train_x);
% test_x = zscore(test_x);
scatter(train_x,train_y,10,'filled','MarkerFaceColor',[.8 .8 1],'MarkerEdgeColor',[.6 .6 1])
hold on;
scatter(test_x,test_y,10,'filled','MarkerFaceColor',[1 .7 .7],'MarkerEdgeColor',[1 .55 .55])
hold on;
xx = linspace(0,24,100)';
xxx = zscore(xx);
p1 = predict(Mdl1,xx);
p2 = predict(Mdl2,xx);
p3 = predict(Mdl3,xxx);
plot(xx,p1,'y-',xx,p2,'b-',xx,p3,'c-',xx,A*x,'m-','LineWidth',1.1)

legend('training data','test data','SVM linear','SVM gaussian','SVM polynomial','LSR polynomial')
xlabel('Local Time (in hour)');
ylabel('Total Carriageway Flow');
title('truth vs prediction');