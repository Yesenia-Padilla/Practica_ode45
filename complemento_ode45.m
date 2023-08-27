%--Funcion ODE45 que resuelve numericamente el sistema odee--%
[t,x]=ode45(@odee,[0 10], [0 (35*pi)/180 0 0]); %--[theta1 theta2 theta'1 theta'2]--%

%----Graficamos las figuras----%
%--Figura 1--%
figure(1)
plot(t,x(:,1), 'g'); %--x y t son parametros que retorna la función--%
grid on
title("Posición de Theta 1");
xlabel("Tiempo");
ylabel("Radianes");

%--Figura 2--%
figure(2)
plot(t,x(:,2),'c'); %--x y t son parametros que retorna la función--%
grid on
title("Posición de Theta 2");
xlabel("Tiempo");
ylabel("Radianes");