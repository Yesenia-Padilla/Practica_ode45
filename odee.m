function dx=odee(t,x) %----Se define nuestra función con el mismo nombre del archivo----%

%----Se definen los valores de los parámetros de la tabla de la ecuación diferencial----%
m1=0.2;
l1=0.3;
m2=0.1;
l2=0.25;
g=9.81;
c1=0.2;

%----Se define el tamaño de la matriz de variables de estado----%
dx=zeros(4,1); %----En este caso es una matriz de 4x1----%

%---Variables de estado---%
%--x1=theta1       x2=theta2--%
%--x3=theta_puntito1   x4=theta_puntito2--%
%--x_puntito1=theta_puntito1=x3     x_puntito2=theta_puntito2=x4--%

%----Se definen las matrices----%
%----Matrices A, B y C resultantes del despeje y multiplicación de matrices----%
A=[(m1+m2)*l1 m2*l2*cos(x(2)-x(1));l1*cos(x(2)-x(1)) l2];
B=[c1 -m2*l2*x(4)*sin(x(2)-x(1));l1*x(3)*sin(x(2)-x(1)) 0];
C=[(m1+m2)*g*sin(x(1));g*sin(x(2))];

%----Representacion de espacio de estado----%
dx(1)=x(3);
dx(2)=x(4);
dx(3:4)=inv(A)*(-B*[x(3);x(4)]-C);