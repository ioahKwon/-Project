n=50000;
p =0.01;
trials= 1000;

for i = 1:trials
    t =bernoulli_rv_gen(p,n); 
    s(i) = sum(t);
end
z= (s - n*p)/sqrt(n*p*(1-p));
z_val = min(z):0.2:max(z);
[f,z_val] = cdfplot(z);
hold on
mm = 50000;  % the number of samples 
G=randn(mm,1);
[h,stats]= cdfplot(G);