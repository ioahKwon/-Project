function pmf = q2(x,n)
num_day = n;
num_people = x;
count = zeros(1,x+1);
visit = 0;
for i=1:num_day;
    for j=1:num_people;
        if randi([1,72]) == 24
            visit = visit +1;
        end
    end
count(visit+1) = count(visit+1)+1;
visit = 0;
end

pmf = count/num_day