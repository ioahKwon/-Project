n=500;
lambda =500;
trials= 1000;

for i = 1:trials
    t = poisson_rv_gen(lambda,n); 
    s(i) = sum(t);
end
z= (s - n*lambda)/sqrt(n*lambda);
z_val = min(z):0.2:max(z);
[f,z_val] = cdfplot(z);
hold on;
%mm = 500;  % the number of samples 
%G=randn(mm,1);
%[h,stats]= cdfplot(G);