function g = gPenalty(f,x)

%求Penalty检验函数的一阶导
[n,t] = size(x);
if n==0 && t==0
    error('error input x');
end
g = zeros(n,t);
i=0;
while i<n
    g(i,1) = diff(f,x(i,1));
end
g

