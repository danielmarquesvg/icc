close all %fecha tudo o que esta rodando no octave
clear all %limpa o ambiente de trabalho (variaves e valores)
clc       %limpa a janela de comandos

% Questao 3 - A altura máxima h alcançada por um objeto arremessado
% com uma velocidade v e em um ângulo (theta) em relacao a horizontal,
% desconsiderando a resistência do ar, e a equacao 3.
% Escreva um programa em Matlab/Octave para calcular a altura maxima
% (considere g = 9.8).

% Entrada de dados
fprintf('Calcular a altura maxima de um objeto arremessado \n\n');

v = input('Digite o valor de v: ');
angulo = input('Digite o valor do angulo: ');
g = 9.8;

% Processamento
h = ((v^2)*(sin(angulo))^2 / 2*g)

% Saida de dados
fprintf('\nA altura maxima (h) = %f',h);