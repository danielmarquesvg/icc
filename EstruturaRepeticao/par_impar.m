close all
clear all
clc

% Este programa exibe os numeros pares e impares no intervalo delimitado

% Entrada de dados
inicio = input('Digite o numero do inicio do intervalo: ');
final = input('Digite o numero do final do intervalo: ');

% Processamento e Saida de dados

if(inicio <= final) %contagem crescente
    for contador = inicio:final
        if(mod(contador,2) == 0)
            fprintf('O numero %.0d eh par \n',contador);
        else
            fprintf('O numero %.0d eh impar \n',contador);
        end
    end
else    %contagem decrescente e precisa do decremento
    for contador = inicio:-1:final
        if(mod(contador,2) == 0)
            fprintf('O numero %.0d eh par \n',contador);
        else
            fprintf('O numero %.0d eh impar \n',contador);
        end
    end
end