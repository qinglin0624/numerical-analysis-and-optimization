x = linspace(2,4,100);
H = 1:11;
c=0;
figure
for i=-1:0.2:1
    c=c+1;
    f=@(x) (x.^2+1) - (log(x-2) + log(4-x))/(10^i);
    [xt,fval] = fminbnd(f,2,4);
    H(c)=plot(x,f(x));
    hold on
    scatter(xt,fval,11,'red','filled');
    %plot(xt,fval,'r.','LineWidth',3);
    hold on
    plot([xt xt], [0 fval],':k');
    hold on
    %text(xt,2,num2str(xt),'fontsize',7);
end
xx = linspace(1,5,100);
plot(xx,xx.^2+1,'--k');
legend(H,'t=10^{-1}','t=10^{-0.8}','t=10^{-0.6}','t=10^{-0.4}','t=10^{-0.2}','t=1','t=10^{0.2}','t=10^{0.4}','t=10^{0.6}','t=10^{0.8}','t=10','FontSize',7);
xlim([1 6])
ylim([0 60])
xlabel('x');
ylabel('$$f_{0} + \frac{1}{t}\times\phi$$','interpreter','latex');
text(3.8,9.5,'$$f_{0}=x^2+1$$','interpreter','latex','fontsize',10);
%title('$$f_{0} + \frac{1}{t}\times\phi$$','interpreter','latex')