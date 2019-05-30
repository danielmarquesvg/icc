close all
clear all
clc

% questao 3
% escreva um programa em Matlab/Octave que imprima na tela (usando o
% comando fprintf) a raiz quadrada dos números de 1 ate 20

for contador = 1:20
    raizQuadrada = sqrt(contador);
    fprintf('A raiz quadrada de %.0f eh %.6f\n',contador,raizQuadrada);
end