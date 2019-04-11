close all %fecha tudo o que esta rodando no octave
clear all %limpa o ambiente de trabalho (variaves e valores)
clc       %limpa a janela de comandos

% Questao 1 - A taxa de transferência de calor q atraves de uma
% parede cilindrica solida. onde k é a condutividade termica.
% Escreva um programa em Matlab/Octave para calcular q para um tubo
% de cobre e considere k = 401 Watts/(C . m).

% Entrada de dados
fprintf('Calcular a taxa de transferencia de calor \n\n');

l = input('Digite o valor de L: ');
t1 = input('Digite o valor de T1: ');
t2 = input('Digite o valor de T2: ');
r1 = input('Digite o valor de r1: ');
r2 = input('Digite o valor de r2: ');
k = 401;

% Processamento
q = 2*pi*l*k*(t1-t2/log(r2/r1));

% Saida de dados
fprintf('\nO valor de q = %f',q);
