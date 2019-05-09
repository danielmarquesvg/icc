close all
clear all
clc

% Este programa faz voce contar em um intervalo delimitado

% Entrada de dados
inicio = input('Digite o numero do inicio da contagem: ');
final = input('Digite o numero do final da contagem: ');

% Processamento e Saida de dados

if(inicio <= final) %contagem crescente
    for contador = inicio:final
        fprintf('%.0d \n', contador);
    end
else    %contagem decrescente e precisa do decremento
    for contador = inicio:-1:final
        fprintf('%.0d \n', contador);
    end
end