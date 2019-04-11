close all %fecha tudo o que esta rodando no octave
clear all %limpa o ambiente de trabalho (variaves e valores)
clc       %limpa a janela de comandos

% Questao 2 - A frequencia de ressonancia f (em Hz) para o circuito
% ilustrado pela Figura 2 é dada pela Equacão 2. Escreva um programa
% em Matlab/Octave para calcular a frequencia de ressonância f. O
% programa deve solicitar os valores de ?1 e ?2 em ohms.
% Considere L = 0,2 henrys e C = 2 × 10^(?6).

% Entrada de dados
fprintf('Calcular a frequencia da ressonancia \n\n');

r1 = input('Digite o valor de r1: ');
r2 = input('Digite o valor de r2: ');
l = 0.2;
c = 2*(10^(-6));

% Processamento
f = (1/2*pi)*sqrt(l*c*((r1^2)*c - l/(r2^2)*c - l));

% Saida de dados
fprintf('\nA frequencia da ressonancia = %f',f);
