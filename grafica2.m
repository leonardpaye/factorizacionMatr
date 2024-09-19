% Crear un rango de valores para x e y
x = -10:1:10;
y = -10:1:10;

% Crear la malla de puntos (X, Y)
[X, Y] = meshgrid(x, y);

% Definir los planos
Z1 = (11 - 8*X - 4*Y);            % Primer plano despejado para z
Z2 = (4 + 2*X - 5*Y);             % Segundo plano despejado para z
Z3 = (7 - 2*X + Y) / 6;           % Tercer plano despejado para z

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

