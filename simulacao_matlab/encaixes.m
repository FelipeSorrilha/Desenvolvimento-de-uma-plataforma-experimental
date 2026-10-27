%% Encaixe das peças
% 1: decidir a rotação da peça
% 2: escolher um ponto-ancora em cada peca 
% 3: dizer onde esse ponto deve cair na montagem
% Formula:  p' = R * (p - ancora) + destino, é a funcao mover_peca
clear; clc; close all

%% Caixa girou 180 graus em torno de X e eixo do YAW centralizado
caixa0 = ler_peca('caixav3');
dimensoes(caixa0, 'caixav3 (original)');
% centro do furo do yaw = (105, -200, 0) -> (0, 0, 120)
% a caixa tem 120 mm, ao virar de cabeca para baixo o z = 0 vira z = 120
caixa = mover_peca(caixa0, rot('x', 180), [105 -200 0], [0 0 120]);
dimensoes(caixa, 'caixav3 (montada)');

%% Tampa deslocada
tampa0 = ler_peca('tampa-solo');
dimensoes(tampa0, 'tampa-solo (original)');
% Centro = (0, -425.5, 0)
% tem que ir pra (0, 0, -5), a placa de 5 mm fica acaixo da caixa
tampa = mover_peca(tampa0, eye(3), [0 -425.5 0], [0 0 -5]);
dimensoes(tampa, 'tampa-solo (montada)');

%% Conferir com numeros: o que deve acontecer se o encaixe esta certo?
mc = min(caixa.Points); Mc = max(caixa.Points);
mt = min(tampa.Points); Mt = max(tampa.Points);

%% Ver o resultado
figure('Name','Passo 2 - caixa + tampa','Color','w','Position',[60 60 1300 600]);
for k = 1:2
    subplot(1,2,k); hold on
    mostrar(caixa, [0.60 0.65 0.72], 1);
    mostrar(tampa, [0.85 0.55 0.20], 1);
    axis equal; grid on; camlight; lighting gouraud;
    xlabel('X'); ylabel('Y'); zlabel('Z');
end
subplot(1,2,1); view(35, 20);  title('vista de cima/lado');

