% Crear un rango de valores para x e y
x = -10:1:10;
y = -10:1:10;

% Crear la malla de puntos (X, Y)
[X, Y] = meshgrid(x, y);

% Definir los planos
Z1 = (27 - 10*X - 2*Y) / -2;         % Primer plano
Z2 = (-61.5 + 3*X + 6*Y) / 2;        % Segundo plano
Z3 = (-21.5 - X - Y) / 5;            % Tercer plano

% Graficar los planos
figure;
hold on;  % Mantener todos los gráficos en la misma figura

% Graficar cada plano con colores diferentes
surf(X, Y, Z1);  % Primer plano
surf(X, Y, Z2);  % Segundo plano
surf(X, Y, Z3);  % Tercer plano

% Etiquetas y visualización
xlabel('Eje X');
ylabel('Eje Y');
zlabel('Eje Z');
title('Gráfico de tres planos');
grid on;

% Añadir transparencia para visualizar mejor la intersección de los planos
alpha(0.7);

hold off;

