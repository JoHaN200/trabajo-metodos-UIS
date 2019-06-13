clc
clear
Xp=6;
X=[6 9 14 16 4];
Y=[3 4 6 12 13];
Xa=abs(Xp-X);
p=min(find(Xa==min(Xa)));
if p==1
    A=[X(p)^2 X(p) 1; X(p+1)^2 X(p+1) 1;X(p+2)^2 X(p+2) 1];
    B=[Y(p);Y(p+1);Y(p+2)];
else
    if p~=length(X)
        A=[X(p-1)^2 X(p-1) 1;X(p)^2 X(p) 1;X(p+1)^2 X(p+1) 1];
        B=[Y(p-1);Y(p);Y(p+1)];
    else
       A=[X(p-2)^2 X(p-2) 1;X(p-1)^2 X(p-1) 1; X(p)^2 X(p) 1];
       B=[Y(p-2);Y(p-1);Y(p)];
    end
end
c=linsolve(A,B);
Yp=(c(1)*Xp^2)+(c(2)*Xp)+c(3);
