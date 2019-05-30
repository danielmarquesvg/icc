close all
clear all
clc

% questao 4
% escreva um programa capaz de receber varios numeros. Para sair dos
% programa, o usuario deve informar o numero zero. Caso seja digitado um
% numero positivo, o programa retorna a raiz quadrada do numero. Caso seja
% digitado um numero negativo, o programa retorna o quadrado do numero.

numero = 1;

while(numero ~= 0)
    numero = input('Informe um numero: ');
    
    if(numero < 0)
        resultado = numero ^ 2;
        fprintf('Quadrado: %.0f\n',resultado);
    end
    
    if(numero > 0)
        resultado = sqrt(numero);
        fprintf('Raiz quadrada: %.6f\n',resultado);
    end    
end

fprintf('FIM do Programa');