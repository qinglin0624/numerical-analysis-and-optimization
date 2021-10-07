function solutions = conjugate_gradient_xg54
    % the main function
    % problem 1
    A1=[5 1;1 2];
    b1=[2;2];
    x01=[1;2];
    solution1 = CG_quadratic(A1,b1,x01,150,0.1,50);
    % problem 2
    A2=2*eye(2);
    b2=0;
    x02=[1;1];
    solution2 = CG_quadratic(A2,b2,x02,150,0.1,50);
    % put the answers in different columns
    solutions = [solution1 solution2];
end


function result = CG_quadratic(A,b,x0,imax,et,N)
    i=0;
    % starting point
    x=x0;
    r=b-A*x0;
    d=r;
    del_new=r'*r;
    del_0=del_new;
    while (i<imax)&&(del_new>et^2*del_0)
        % imax is the maximum number of iteration
        % et is the error tolerance
        q=A*d;
        alpha=del_new/(d'*q);
        x=x+alpha*d;
        if (mod(i,N)==0)
            % recalculate exact residual to remove accumulated floating point error
            r=b-A*x;
        else
            r=r-alpha*q;
        end
        del_old=del_new;
        del_new=r'*r;
        beta=del_new/del_old;
        d=r+beta*d;
        i=i+1;
    end
    result=x;
end
