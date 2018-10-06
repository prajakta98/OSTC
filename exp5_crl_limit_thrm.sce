clc ;
n = 0:0.01:1;
x = zeros ( length ( n) ,1) ;
i = 1:50;                       // length of Uniform random variable 1
x ( i ) = 2;
subplot (3 ,3 ,1) ;
plot (n ,x, 'bo-.')
xlabel ('PDF') ;
ylabel ('PDF of RV 1');
title ('PDF of RV 1');

y = zeros ( length ( n) ,1) ;
j = 1:50;
y ( j ) = 1*2;                 // length of Uniform random variable 2
subplot (3 ,3 ,2) ;
plot (n ,y, 'r-d')
xlabel ('PDF') ;
ylabel ('PDF of RV 2');
title ('PDF of RV 2');

z1 = convol (x , y ) ;
subplot (3 ,3 ,3)

plot ( z1 )
xlabel ('RV Value') ;
ylabel ('PDF')
title ('Joint PDF of RV 1 and RV 2') ;

for i = 4:9                   // adding random variable 9 times
 subplot (3 ,3 , i )
 z1 = convol ( z1 , y );
 plot ( z1 )
 xlabel ('RV Value') ;
 ylabel ('PDF')
 title ('Joint PDF') ;
end
