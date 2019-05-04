close all
clear all
clc

% Programa para triagem de doadores de sangue
% Requisitos para doar

% Requisitos PARTE 1
% Ter entre 16 e 69 anos.
% Pessoas acima de 60 anos so pode doar se ja tiverem doado sangue alguma vez antes dessa idade.
% Pesar no minimo 60kg se for do sexo masculino e 50kg se for do sexo feminimo.

fprintf('Programa de Triagem de Doadores de Sangue\n');
fprintf('Etapa 1 da Triagem\n\n');

sexo = input('Informe o sexo do doador (0=M e 1=F): ');
idade = input('Informe a idade: ');
peso = input('Informe o seu peso: ');

% etapa2_triagem - 0 para NAO e 1 para SIM
% variavel que verifica se o doador esta apto a participar da etapa 2 de requisitos
etapa2_triagem = 0;

if((idade < 16) && (idade > 69))
    fprintf('\nNao eh possivel doar sangue\n');
    fprintf('O doador nao esta dentro do intervalo de idade permitida!');
else
    if(sexo == 1) % sexo == 1 (feminino)
        if(peso >= 50)
            if(idade >= 60)
                doador = input('Ja doou sangue antes? (0=NAO e 1=SIM): ');
                if(doador == 1)
                    etapa2_triagem = 1;
                else
                    fprintf('\nNao eh possivel doar sangue\n');
                    fprintf('O doador do sexo feminino possui mais de 60 anos e nunca doou sangue anteriormente!');
                end
            else
                etapa2_triagem = 1;
            end        
        else
            fprintf('\nNao eh possivel doar sangue\n');
            fprintf('O doadora do sexo feminino nao possui o peso minimo de 50 Kg');
        end
    else %sexo == 2 (masculino)
        if(peso >= 60)
            if(idade >= 60)
                doador = input('Ja doou sangue antes? (0=NAO e 1=SIM): ');
                if(doador == 1)
                    etapa2_triagem = 1;
                else
                    fprintf('\nNao eh possivel doar sangue\n');
                    fprintf('O doador do sexo masculino possui mais de 60 anos e nunca doou sangue anteriormente!');
                end
            else
                etapa2_triagem = 1;
            end        
        else
            fprintf('\nNao eh possivel doar sangue\n');
            fprintf('O doador do sexo masculino nao possui o peso minimo de 60 Kg');
        end
    end
end

% REQUISITOS PARTE 2
% Existe alguns requisitos de quem não pode doar sangue:
% Estiver com febre no dia da doação.
% Estiver grávida.
% Estiver amamentando, a menos que o parto tenha ocorrido há mais de 12 meses.

if(etapa2_triagem == 1)
    fprintf('\nEtapa 2 da triagem\n');
    if(sexo == 0) % sexo == 1 (masculino)
        febre = input('O doador esta com febre? (0=NAO e 1=SIM): ');
        if(febre == 1)
            fprintf('\nNao eh possivel doar sangue\n');
            fprintf('O doador esta com febre!');
        else
            fprintf('\nO doador esta apto a doar sangue\n');
            fprintf('Por favor, aguarde na fila para doacao!');
        end
        
    else % sexo == 1 (feminino)
        gravida = input('A doadora esta gravida? (0=NAO e 1=SIM): ');
        if(gravida == 1)
            fprintf('\nNao eh possivel doar sangue\n');
            fprintf('O doadora esta gravida!');
        else
            amamentando = input('A doadora esta amamentando? (0=NAO e 1=SIM): ');
            if(amamentando == 1)
                parto = input('O parto ocorreu ha mais de 12 meses? (0=NAO e 1=SIM): ');
                if(parto == 0)
                    fprintf('\nNao eh possivel doar sangue\n');
                    fprintf('O doadora teve parto de uma crianca a menos de 12 meses!');
                else
                    febre = input('A doadora esta com febre? (0=NAO e 1=SIM): ');
                    if(febre == 1)
                        fprintf('\nNao eh possivel doar sangue\n');
                        fprintf('O doadora esta com febre!');
                    else
                        fprintf('\nA doadora esta apta a doar sangue\n');
                        fprintf('Por favor, aguarde na fila para doacao!');
                    end
                end
            else
                if(febre == 1)
                    fprintf('\nNao eh possivel doar sangue\n');
                    fprintf('O doadora esta com febre!');
                else
                    fprintf('\nA doadora esta apta a doar sangue\n');
                    fprintf('Por favor, aguarde na fila para doacao!');
                end
            end
        end
    end
end