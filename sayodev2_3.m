A = [ 19.6775 -2.3959 0.590345 0.821528 -0.0408114 -1.08427 ; 
      -3.03976 -14.8799 -2.55725 -0.464397 -0.77759 0.677509 ; 
      0.272184 1.60861 10.2579 0.951789 0.590922 0.487173 ; 
      0.703095 -0.713206 -0.235244 -5.01232 -0.0763653 0.172883 ; 
      0.465251 -1.17162 -0.264263 0.381359 3.21006 0.328434 ; 
      -1.30149 0.220926 -1.04075 -0.269238 0.216474 0.246793];
x = [ 1 ; 0 ; 0 ; 1 ; 0 ; 1 ];
lamda = dot(A*x,x)/dot(x,x);
y = 0;
i = 1;
j = 0;
go = true;
while go
    y = lamda;
    x = A*x;
    lamda = dot(A*x,x)/dot(x,x);
    if(abs(lamda - y) < 10^(-2))
        j = j+1;
        disp("x" + i + ": ");
        disp(x);
        disp("lamda: " + lamda);
    end
    if(j==5)
        break;
    end
    i = i + 1;
end

