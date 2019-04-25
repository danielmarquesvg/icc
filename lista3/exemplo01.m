close all
clear all
clc

% este programa verifica se um numero eh negativo

% entrada de dados
numero = input('Digite um numero aleatorio: ');

if (numero < 0)
    fprintf('O numero %.0d eh negativo',numero);
end