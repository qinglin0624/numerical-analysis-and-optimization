function new_A=my_standardize(A,avg,sd)
%     avg = mean(A,1);
%     sd = std(A,1);
    if min(abs(sd))==0
        if min(abs(avg))==0
            new_A = A;
        else
            new_A = A./avg;
        end
    else
        new_A = (A-avg)./sd;
    end
end