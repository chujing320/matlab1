function g = gPenalty(Point,gamma)

%求Penalty检验函数的一阶导
[n,t] = size(Point);
if n==0 && t==0
    error('error input Point');
end
g = zeros(n,t);
gfunc = @(x,i) 2*gamma*(x(i,1)-1)+4*sum(x.*x-1/4)*x(i,1);
i=0;
while i<n
    g(i,1) = gfunc(Point,gamma)
end
g

