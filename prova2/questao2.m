close all
clear all
clc

% questao 2
% escreva um programa em Matlab/Octave que imprima na tela (usando o
% comando fprintf e laco FOR) os 20 primeiros numeros pares

quantidadeDePares = 0;

for contador = 0:38
    if(mod(contador,2) == 0)
        quantidadeDePares = quantidadeDePares + 1;
        fprintf('O numero %.0f eh par\n',contador);
        fprintf('Quantidade de pares = %.0f\n\n',quantidadeDePares);
    end
end