close all
clear all
clc

% questao 1
% Escreva um programa em Matlab/Octave que receba cinco numeros (usando o
% comando input) e imprima (usando o comando fprintf) o quadrado do numero.
% Use o comando FOR para repetir o processo de solicitar o numero, calcular
% o quadrado e imprimir na tela o resultado

for contador = 1:5
    
    % entrada de dados
    numero = input('Informe um numero: ');
    
    % processamento
    numeroAoQuadrado = numero ^ 2;
    
    % saida de dados
    fprintf('O quadrado de %.0d eh %.0d\n',numero,numeroAoQuadrado);
    
end