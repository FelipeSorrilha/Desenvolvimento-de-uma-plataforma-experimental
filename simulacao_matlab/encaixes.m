%% Montagem completa
% mesmo padrao do encaixe da caixa e da tampa:
% 1: decidir a rotacao da peca
% 2: escolher um ponto-ancora em cada peca
% 3: dizer onde esse ponto deve cair na montagem
% Formula:  p' = R * (p - ancora) + destino, e a funcao mover_peca
% Sistema da montagem: Z vertical, eixo do yaw = linha x = 0, y = 0, eixo de pitch = X
clear; clc; close all

pecas = {};     
cor_base = [0.60 0.65 0.72]; cor_yaw = [0.25 0.55 0.80]; cor_oldham = [0.95 0.76 0.20];
cor_pitch = [0.88 0.54 0.17]; cor_tampa = [0.85 0.30 0.25]; cor_eixo = [0.80 0.80 0.80];
cor_helice = [0.18 0.80 0.44];

eixo_pitch = [0 0 319.2];  
R_Y = [0 1 0;  0 0 1;  1 0 0];    

%% Caixa girou 180 graus em torno de X e eixo do YAW centralizado
% centro do furo do yaw = (105, -200, 0) -> (0, 0, 120)
% a caixa tem 120 mm, ao virar de cabeca para baixo o z = 0 vira z = 120
% o giro de 90 graus em z deixa as janelas de 120 graus assim: fiacao em 0 e lingueta do Y em 180
caixa0 = ler_peca('caixav3');
caixa = mover_peca(caixa0, rot('z', 90) * rot('x', 180), [105 -200 0], [0 0 120]);
dimensoes(caixa, 'caixav3 (montada)');
pecas(end+1,:) = {caixa, cor_base};

%% Tampa deslocada
% Centro = (0, -425.5, 0) -> (0, 0, -5), a placa de 5 mm fica abaixo da caixa
% gira 90 graus em z junto com a caixa (os furos do aro so batem assim)
tampa0 = ler_peca('tampa-solo');
tampa = mover_peca(tampa0, rot('z', 90), [0 -425.5 0], [0 0 -5]);
dimensoes(tampa, 'tampa-solo (montada)');
pecas(end+1,:) = {tampa, cor_base};

%% Caixa do Oldham (RolamentoOldham-yaw)
% centro da face de baixo = (225.8, 55, 0) -> (0, 0, 40.95)
% a face de cima (49.35 mm acima) encosta embaixo do xentro, em z = 90.3 (= 120 - 29.7)
% gira 90 graus em z com a caixa: os 3 furos (raio 26 mm) tem que coincidir com os do pedestal
alojamento0 = ler_peca('RolamentoOldham-yaw');
alojamento = mover_peca(alojamento0, rot('z', 90), [225.8 55 0], [0 0 40.95]);
dimensoes(alojamento, 'RolamentoOldham-yaw (montada)');
pecas(end+1,:) = {alojamento, cor_base};

%% Haste do yaw (rolamentoToY)
% eixo da haste = (225.8, 1, 0) -> (0, 0, 71.1)
% o cone da haste (39.2 mm acima da ponta) assenta na borda do furo do pedestal, em z = 110.3
haste0 = ler_peca('rolamentoToY');
haste = mover_peca(haste0, eye(3), [225.8 1 0], [0 0 71.1]);
dimensoes(haste, 'rolamentoToY (montada)');
pecas(end+1,:) = {haste, cor_eixo};

%% Oldham 2 (o de cima)
% vira de cabeca para baixo: o furo (8,1 mm) fica voltado para cima e recebe a haste
% centro da face do furo = (241.8, -34, 0) -> (0, 0, 80.6) = ponta da haste (71.6) + 9 mm de furo
oldham20 = ler_peca('oldham2');
oldham2 = mover_peca(oldham20, rot('x', 180), [241.8 -34 0], [0 0 80.6]);
dimensoes(oldham2, 'oldham2 (montada)');
pecas(end+1,:) = {oldham2, cor_oldham};

%% Disco do meio do Oldham
% centro da face de baixo = (209.8, -66, 0) -> (0, 0, 62.6)
% fica entre os outros 2, com folga de 0.4 mm em cima e embaixo (as linguetas tem 4.5 mm) 
disco0 = ler_peca('entreOsOldham');
disco = mover_peca(disco0, eye(3), [209.8 -66 0], [0 0 62.6]);
dimensoes(disco, 'entreOsOldham (montada)');
pecas(end+1,:) = {disco, cor_oldham};

%% Oldham 1 (de baixo)
% a lingueta do oldham1 gira 90 graus em z
% centro da base = (209.8, -34, 0) -> (0, 0, 48.2)
oldham10 = ler_peca('oldham1');
oldham1 = mover_peca(oldham10, rot('z', 90), [209.8 -34 0], [0 0 48.2]);
dimensoes(oldham1, 'oldham1 (montada)');
pecas(end+1,:) = {oldham1, cor_oldham};

%% Y, metade 1
% Y em pe: x do arquivo vira Z, y vira X, z vira Y (matriz R_Y)
% (x = 5 do arquivo, meio da espessura) = (5, 45, 21) -> (0, 0, 120.2): 0.2 mm acima da face da caixa
y10 = ler_peca('y1v2');
y1 = mover_peca(y10, R_Y, [5 45 21], [0 0 120.2]);
dimensoes(y1, 'y1v2 (montada)');
pecas(end+1,:) = {y1, cor_yaw};

%% Y, metade 2
% segunda metade: mesma rotacao do y1 + virada 180 graus em torno de Y
% (185.8, -45, 21) e o mesmo ponto fisico do (5, 45, 21) do y1, vai para o mesmo destino
y20 = ler_peca('y2v2');
y2 = mover_peca(y20, R_Y * diag([-1 1 -1]), [185.8 -45 21], [0 0 120.2]);
dimensoes(y2, 'y2v2 (montada)');
pecas(end+1,:) = {y2, cor_yaw};

%% novoTopo
% centro dos rolamentos = (0, 0, 32.05) -> eixo de pitch
% fica entre os dentes do garfo do Y
topo0 = ler_peca('novoTopo');
topo = mover_peca(topo0, R_Y * rot('y', 90), [0 0 32.05], eixo_pitch);
dimensoes(topo, 'novoTopo (montada)');
pecas(end+1,:) = {topo, cor_yaw};

%% Tampa lateral do novoTopo
% centro da tampa = (0, 65.6, 0) -> (47.3, 0, 322.6)
% o topo da tampa fica alinhado ao topo do novoTopo
tampa_topo0 = ler_peca('tampaNovoTopo');
tampa_topo = mover_peca(tampa_topo0, R_Y * rot('y', 90) * rot('x', 90), [0 65.6 0], [47.3 0 322.6]);
dimensoes(tampa_topo, 'tampaNovoTopo (montada)');
pecas(end+1,:) = {tampa_topo, cor_tampa};

%% Hub central
% centro do canal do eixo de pitch = (61, 0, 14.85) 
hub0 = ler_peca('centralhubv2');
hub = mover_peca(hub0, eye(3), [61 0 14.85], eixo_pitch);
dimensoes(hub, 'centralhubv2 (montada)');
pecas(end+1,:) = {hub, cor_pitch};

%% Tampa de baixo do hub
% centro = (116.7, 0, 0) -> (0, 20.5, 300.95)
tampa_hub0 = ler_peca('tampaCentralHub');
tampa_hub = mover_peca(tampa_hub0, rot('z', 90), [116.7 0 0], [0 20.5 300.95]);
dimensoes(tampa_hub, 'tampaCentralHub (montada)');
pecas(end+1,:) = {tampa_hub, cor_tampa};

%% Haste do eixo de pitch
% meio da haste = (0, -39.4, 27.5) -> eixo de pitch 
eixo_pitch_peca0 = ler_peca('eixoRolamentosEncoders');
eixo_pitch_peca = mover_peca(eixo_pitch_peca0, rot('y', 90), [0 -39.4 27.5], eixo_pitch);
dimensoes(eixo_pitch_peca, 'eixoRolamentosEncoders (montada)');
pecas(end+1,:) = {eixo_pitch_peca, cor_eixo};

%% Braco A (lado -Y)
% braco A (lado -Y)
% ponta com os furos = (7, -141, 0)
bracoA0 = ler_peca('arm');
bracoA = mover_peca(bracoA0, rot('z', -90), [7 -141 0], [0 -36 311.35]);
dimensoes(bracoA, 'arm (montada)');
pecas(end+1,:) = {bracoA, cor_pitch};

%% Encaixe do braco A
% coluna de furos do encaixe = (215.3, 0, 0) -> na ponta do braco
encaixeA0 = ler_peca('encaixe-arm-motordrone');
encaixeA = mover_peca(encaixeA0, rot('z', -90), [215.3 0 0], [0 -194 325.35]);
dimensoes(encaixeA, 'encaixe-arm-motordrone (montada)');
pecas(end+1,:) = {encaixeA, cor_pitch};

%% Suporte do motor A
% eixo do copo na base = (265.5, -62.2, 0)
suporteA0 = ler_peca('suporte-motor-drone');
suporteA = mover_peca(suporteA0, rot('z', -90), [265.5 -62.2 0], [0 -244.2 309.65]);
dimensoes(suporteA, 'suporte-motor-drone (montada)');
pecas(end+1,:) = {suporteA, cor_pitch};

%% Tampa do suporte A
% fica embaixo do suporte, os 4 furos coincidem
tampa_motorA0 = ler_peca('tampa-motor-drone');
tampa_motorA = mover_peca(tampa_motorA0, rot('z', -90), [265.5 -116.6 0], [0 -244.2 301.75]);
dimensoes(tampa_motorA, 'tampa-motor-drone (montada)');
pecas(end+1,:) = {tampa_motorA, cor_tampa};

%% Helice A
heliceA0 = ler_peca('helice');
heliceA = mover_peca(heliceA0, rot('z', -90), [-0.74 0.04 4.53], [0 -244.2 389.65]);
dimensoes(heliceA, 'helice (montada)');
pecas(end+1,:) = {heliceA, cor_helice};

%% Braco B (lado +Y)
% ponta com os furos = (7, -141, 0)
bracoB0 = ler_peca('arm');
bracoB = mover_peca(bracoB0, rot('z', 90), [7 -141 0], [0 36 311.35]);
dimensoes(bracoB, 'arm (montada)');
pecas(end+1,:) = {bracoB, cor_pitch};

%% Encaixe do braco B
% coluna de furos do encaixe = (215.3, 0, 0)
encaixeB0 = ler_peca('encaixe-arm-motordrone');
encaixeB = mover_peca(encaixeB0, rot('z', 90), [215.3 0 0], [0 194 325.35]);
dimensoes(encaixeB, 'encaixe-arm-motordrone (montada)');
pecas(end+1,:) = {encaixeB, cor_pitch};

%% Suporte do motor B
% eixo do copo na base = (265.5, -62.2, 0)
suporteB0 = ler_peca('suporte-motor-drone');
suporteB = mover_peca(suporteB0, rot('z', 90), [265.5 -62.2 0], [0 244.2 309.65]);
dimensoes(suporteB, 'suporte-motor-drone (montada)');
pecas(end+1,:) = {suporteB, cor_pitch};

%% Tampa do suporte B
% fica embaixo do suporte, os 4 furos coincidem
tampa_motorB0 = ler_peca('tampa-motor-drone');
tampa_motorB = mover_peca(tampa_motorB0, rot('z', 90), [265.5 -116.6 0], [0 244.2 301.75]);
dimensoes(tampa_motorB, 'tampa-motor-drone (montada)');
pecas(end+1,:) = {tampa_motorB, cor_tampa};

%% Helice B 
heliceB0 = ler_peca('helice');
heliceB = mover_peca(heliceB0, rot('z', 90), [-0.74 0.04 4.53], [0 244.2 389.65]);
dimensoes(heliceB, 'helice (montada)');
pecas(end+1,:) = {heliceB, cor_helice};

%% resultado
figure('Name','Montagem completa','Color','w','Position',[40 40 1500 650]);
vistas = {[35 20], [0 0], [90 90]};  titulos = {'isometrica','vista de lado (eixo X na tela)','vista de cima'};
for v = 1:3
    subplot(1,3,v); hold on
    for k = 1:size(pecas,1), mostrar(pecas{k,1}, pecas{k,2}); end
    axis equal; grid on; camlight; lighting gouraud; view(vistas{v});
    xlabel('X'); ylabel('Y'); zlabel('Z'); title(titulos{v});
end

function y = suporteB_centro_y(TR)
% centro (em y) da caixa envolvente da peca
y = (min(TR.Points(:,2)) + max(TR.Points(:,2))) / 2;
end
