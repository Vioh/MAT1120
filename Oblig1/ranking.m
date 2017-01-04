function x=ranking(A)

if(~isStochastic(A))
	error('Cannot compute ranking for non-stochastic input matrix!');
	return;
end
m = sym(0.15);
n = size(A,1);
M = (1-m)*sym(A) + (m/n)*ones(n);
basis = null(M-eye(n));
x = eval((1/sum(basis))*basis); % eval is used here to get decimal numbers