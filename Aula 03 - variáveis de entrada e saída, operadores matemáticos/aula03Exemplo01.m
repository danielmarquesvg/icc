close all	% fecha todos os processos rodando no matlab
clear all	% limpa todas as variaveis do ambiente de trabalho
clc			% limpa toda a linha de comando

% problema
% este programa deve ler o nome do aluno, o endereco, a matricula,
% a idade, o nome da disciplina, a nota da prova 1, a nota da prova 2,
% a nota da prova 3 e calcular a media

fprintf("Programa da media do aluno\n\n");

% Entrada de dados
nome = input('Nome do aluno: ', 's');
endereco = input('Endereco: ', 's');
matricula = input('Matricula: ', 's');
idade = input('Idade: ');
disciplina = input('Disciplina: ', 's');
nota1 = input('Nota da prova 1: ');
nota2 = input('Nota da prova 2: ');
nota3 = input('Nota da prova 3: ');

% Processamento
media = (nota1 + nota2 + nota3) / 3;

% Saida de dados
fprintf('\nO aluno %s, portador da matricula %s e matriculado na disciplina %s, obteve a media %f', nome, matricula, disciplina, media);