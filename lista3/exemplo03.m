close all
clear all
clc

% este programa verifica se um numero eh negativo, ou neutro, ou positivo

% entrada de dados
numero = input('Digite um numero aleatorio: ');

if (numero < 0)
    fprintf('O numero %.0d eh negativo',numero);
elseif (numero > 0)
    fprintf('O numero %.0d eh positivo',numero);
else
    fprintf('O numero %.0d eh neutro',numero);
end