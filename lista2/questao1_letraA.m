close all %fecha tudo o que esta rodando no octave
clear all %limpa o ambiente de trabalho (variaves e valores)
clc       %limpa a janela de comandos

% Questao 1 - Letra A
% O Erro Médio Absoluto (EMA) e a soma da diferença absoluta de
% cada ponto das matrizes, dividido pela multiplicacao das dimensoes
% da matriz

%-----------------------------------------------------------------
% arquivo: exemplo.m
%-----------------------------------------------------------------
n = 50;         % dimensao da matriz
F = rand(n,n);  % criamos uma matriz (n,n) com valores randomicos
F = (F .*100);  % multiplicamos todos os elementos da matriz por 100
G = rand(n,n);
G = (G .*100);

% processamento 1 - passo a passo
matriz1 = F - G;    % subtrair todos elementos da matriz F pela matriz G
matriz2 = abs(matriz1);   % aplicar o modulo nos elementos da matriz
matriz3 = sum(matriz2);   % fazer a soma de cada coluna da matriz
matriz4 = sum(matriz3);   % fazer a soma dos elementos do vetor

ema = (1 / n*n) * matriz4;

% processamento 2 - equacao
ema2 = (1 / n*n) * sum(sum(abs(F - G)));