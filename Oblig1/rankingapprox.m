function curX = rankingapprox(A,delta)

m = sym(0.15);
n = size(A,1);
M = (1-m)*sym(A) + (m/n)*ones(n);
prevX = sym((1/n)*ones(n,1)); % previous X, initialized to x{0}
curX  = M*prevX;              % current X, initialized to x{1}

while (abs(max(curX-prevX)) > delta)
	prevX = curX;
	curX  = M*prevX;
end
curX = eval(curX); % eval is used here to get decimal numbers