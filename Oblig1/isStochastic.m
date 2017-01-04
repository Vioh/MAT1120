function ans = isStochastic(A)

% Check if A is a square matrix
[n,d] = size(A);
if (n ~= d)
	ans = false;
	return;
end

% Main loop to check if all columns satisfy the stochastic conditions
for k = 1:n
	col = A(:,k);
	if((sum(col) ~= 1) || (min(col) < 0))
		ans = false;
		return;
	end
end
ans = true; % If function reaches this point, then A must be stochastic