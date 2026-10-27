%% ver pecas do jeito que modelei
% ada STL vem com a sua propria origem e orientacao
% precisa girar e deslocar cada peca
clear; clc; close all

nomes = {'caixav3','tampa-solo','parede-removivel','RolamentoOldham-yaw','rolamentoToY', ...
         'oldham1','entreOsOldham','oldham2','y1v2','y2v2','novoTopo','tampaNovoTopo', ...
         'eixoRolamentosEncoders','centralhubv2','tampaCentralHub','arm','encaixe-arm-motordrone', ...
         'suporte-motor-drone','tampa-motor-drone','helice'};

%% Tamanho e posicao de cada peca (em mm)
fprintf('\n%-24s %s\n', 'peca', 'limites em x, y, z e tamanho');
for k = 1:numel(nomes)
    TR = ler_peca(nomes{k});
    dimensoes(TR, nomes{k});
end

%% Ver todas as pecas lado a lado
figure('Name','Passo 1 - pecas originais','Position',[40 40 1500 850],'Color','w');
for k = 1:numel(nomes)
    subplot(4, 5, k);
    TR = ler_peca(nomes{k});
    mostrar(TR);
    axis equal off; view(35, 25); camlight; lighting gouraud;
    title(nomes{k}, 'Interpreter', 'none', 'FontSize', 8);
end

%% Ver uma peca (substitua na linha abaixo com a q quiser) com os eixos de coordenadas (X vermelho, Y verde, Z azul)
TR = ler_peca('caixav3');
figure('Name','Passo 1 - caixav3 e os eixos globais','Color','w'); hold on
mostrar(TR, [0.6 0.7 0.85], 0.6);
L = 100; 
plot3([0 L],[0 0],[0 0],'r','LineWidth',3); text(L,0,0,' X','Color','r');
plot3([0 0],[0 L],[0 0],'g','LineWidth',3); text(0,L,0,' Y','Color','g');
plot3([0 0],[0 0],[0 L],'b','LineWidth',3); text(0,0,L,' Z','Color','b');
axis equal; grid on; view(35, 20); camlight; lighting gouraud;
xlabel('X (mm)'); ylabel('Y (mm)'); zlabel('Z (mm)');
title('A caixa esta longe da origem (0,0,0): ela fica em x 0..210, y -305..-95');
