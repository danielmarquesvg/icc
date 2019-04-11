clear all
close all
clc

% entrada de dados
capitalInicial = input('Informe o valor do capital inicial: ');
taxaJuros = input('Informe a taxa de juros em porcentagem: ');
meses = input('Informe o numero de meses: ');

% processamento
taxaJurosTransformada = taxaJuros / 100;
capitalFinal = capitalInicial * (1 + taxaJurosTransformada)^(meses / 12);

% saida
fprintf('O Capital final calculado: %f', capitalFinal);
