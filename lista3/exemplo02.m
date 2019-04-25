close all
clear all
clc

% este programa verifica se um numero eh negativo ou nao

% entrada de dados
numero = input('Digite um numero aleatorio: ');

if (numero < 0)
    fprintf('O numero %.0d eh negativo',numero);
else
    fprintf('O numero %.0d ou eh neutro, ou positivo',numero);
end