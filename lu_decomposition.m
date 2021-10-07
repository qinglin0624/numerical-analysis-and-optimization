function [L,U,P] = lu_docomposion(A)
    [n,n] = size(A);
    L = zeros(n); % initialize matrix L
    P = eye(n); % initialize matrix P
    for i = 1:n-1
        % Find pivot
        [k,big] = Pivot(A,i,n);
		% Switch row i and row k
        L([i k],:) = L([k i],:);
        A([i k],:) = A([k i],:);
        P([i k],:) = P([k i],:);
        
        for j = i+1:n
            % Routine: compute factor
            factor = A(j,i)/A(i,i);
            % Handle case of pivot=0
            if (big==0)
                factor=0;
            end
            L(j,i) = factor;
            A(j,:) = A(j,:) - factor*A(i,:);
        end
    end
    U = A; % A becomes U matrix after Gauss elimination
    L = L + eye(n); % Diagonal entries of L matrix are 1
end


function [k,big] = Pivot(A, i, n) 
    k = i; % index of the row with the largest potential pivot so far
    big = A(i,i); % current largest potential pivot
    for pos = i+1:n
        candidate = abs(A(pos,i)); % magnitude of the current potential pivot
        if (candidate > big)
            big = candidate;
            k = pos;
        end
    end
end