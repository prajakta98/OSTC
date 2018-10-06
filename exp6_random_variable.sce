clc;clear all;
clf ;
a = 1000;
count=0;
for i=1:a;
    x=round(rand(1));    //"round" the elements to nearest integer 
                         //and "rand" returns a pseudo random scalar 
                         //value drawn from an uniform distribution of unit interval
    if (x==1)//Head Count ==1
        count=count+1;   //increment the count value when head occurs
end
p(i)=count/i;            //probability of head occurring at ith interval
end
plot(1:a,p)              //plot the probability at ith trail(discrete sequence)
xlabel ("Number of Trials")
ylabel ("Probability")
title ("Probability of getting Head")
