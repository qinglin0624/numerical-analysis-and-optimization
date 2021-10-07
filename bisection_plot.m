p = [5 -5 6 -2];
x = linspace(-2,2);
y = polyval(p,x);
figure
draw = plot(x,y,'b',x,x*0,'c--');
draw(1).LineWidth = 1.5;
xlabel('x');
ylabel('f(x)');
title('f(x)=5x^3-5x^2+6x-2')