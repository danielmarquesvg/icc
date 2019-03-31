close all	% fecha todos os processos rodando no matlab
clear all	% limpa todas as variaveis do ambiente de trabalho
clc			% limpa toda a linha de comando

% problema
% este programa calcula a distancia entre duas cidades
% atraves de sua latitude e longitude
% fonte: http://carlosdelfino.eti.br/cursoarduino/geoprocessamento/calculando-distancias-com-base-em-coordenadas-de-gps/

% entrada de dados
cidade1 = input('Cidade 1: ', 's');
cidade2 = input('Cidade 2: ', 's');

fprintf('\n'); %pular linhas

latitudeCidade1 = input('Latitude da cidade 1: ');
longitudeCidade1 = input('Longitude da cidade 1: ');

latitudeCidade2 = input('Latitude da cidade 2: ');
longitudeCidade2 = input('Longitude da cidade 2: ');

% processamento
d2r = 0.017453292519943295769236;

distanciaLongitudes = (longitudeCidade2 - longitudeCidade1) * d2r;
distanciaLatitudes = (latitudeCidade2 - latitudeCidade1) * d2r;

temp_sin = sin(distanciaLatitudes / 2);
temp_cos = cos(latitudeCidade1 * d2r);
temp_sin2 = sin(distanciaLongitudes / 2);

a = (temp_sin * temp_sin) + (temp_cos * temp_cos) * (temp_sin2 * temp_sin2);
c = 2.0 * atan2(sqrt(a), sqrt(1.0 - a));

distancia = 6368.1 * c;

% saida de dados
fprintf('\nA distancia em linha reta entre %s e %s = %f Km',cidade1,cidade2,distancia);
