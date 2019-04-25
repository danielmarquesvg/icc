close all
clear all
clc

% este programa calcula as raizes de uma equacao do segundo grau

fprintf('Calculando as raizes da equacao do segundo grau');
fprintf('Formato da equacao = a*x^2 + b*x + c');
fprintf('Digite os valores das variaveis a, b e c\n\n');

% entrada de dados
a = input('Digite o valor de a: ');
b = input('Digite o valor de b: ');
c = input('Digite o valor de c: ');

% processamento

delta = (b^2) - 4*a*c;

if (delta > 0)
    % a equacao possui duas raizes
	x1 = (-b + sqrt(delta)) / (2*a);
	x2 = (-b - sqrt(delta)) / (2*a);
	fprintf('A equacao %.0d*x^2 + %.0d*x + %.0d possui duas raizes, x1 = %.2f e x2 = %.2f',a,b,c,x1,x2);
elseif (delta == 0)
	% a equacao possui uma raiz
	x = -b / (2*a);
	fprintf('A equacao %.0d*x^2 + %.0d*x + %.0d possui uma raizes, x = %.2f',a,b,c,x);
else
	% a equacao nao possui raizes
	% possui uma raiz complexa (pode calcular caso queira)
	fprintf('A equacao %.0d*x^2 + %.0d*x + %.0d nao possui raizes',a,b,c');
end