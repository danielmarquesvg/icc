close all
clear all
clc

% Este programa cria uma matriz e adiciona os elementos dentro dela

% Entrada de dados
linha = input('Digite o numero de linhas da matriz: ');
coluna = input('Digite o numero de colunas da matriz: ');
fprintf('\n'); % pular linha

% Criar matriz zerada (todos elementos sao zero)
matriz = zeros(linha, coluna);

for i = 1:linha
    for j = 1: coluna
        fprintf('Digite o elemento a%.0d%.0d: ',i,j);
        matriz(i,j) = input('');
    end
end

% Saida de dados
fprintf('\nMatriz \n');
disp(matriz);