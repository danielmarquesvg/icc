close all %fecha tudo o que esta rodando no octave
clear all %limpa o ambiente de trabalho (variaves e valores)
clc       %limpa a janela de comandos

% Questao 1 - Letra B
% O Erro Medio Quadrático (EMQ) e a soma do quadrado das diferencas
% de cada ponto das matrizes, dividido pela multiplicacao das 
% dimensoes da matriz, expresso como:

%-----------------------------------------------------------------
% arquivo: exemplo.m
%-----------------------------------------------------------------
n = 50; % dimensao da matriz
F = rand(n,n); % criamos uma matriz (n,n) com valores randomicos
F = (F .*100); % multiplicamos todos os elementos da matriz por 100
G = rand(n,n);
G = (G .*100);

% processamento
emq = (1 / n*n)*sum(sum((F - G)^2));