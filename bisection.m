function root = bisection
    % the main function
    root = Bisect(0,1,0.001,100);
end


function result = Bisect(xl,xu,es,imax)
    iter = 0;
    % first set the initial to xl
    xr = xl;
    ea = xu - xl;
    while (true)
        %xrold = xr;
        xr = (xl + xu) / 2;
        iter = iter + 1;
        ea = ea / 2;
        %if (xr ~= 0)
            %ea = abs((xr - xrold) / xr) * 100;
        %end
        test = f(xl) * f(xr);
        if (test < 0)
            xu = xr;
        elseif (test > 0)
            xl = xr;
        else
            ea = 0;
        end
        fprintf('%2i \t %f \t %f \t %f \n ', iter, xl, xu);
        fprintf('\n');
        if (ea < es) || (iter >= imax)
            break  
        end
    end
    % finalize the estimated root
    result = xr;
end

function y = f(x)
    y = 5 * x.^3 - 5 * x.^2 + 6 * x - 2;
end