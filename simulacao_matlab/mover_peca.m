function TR2 = mover_peca(TR, R, ancora, destino)
% Gira a peca em torno de um ponto e leva esse ponto ate o destino.
% p' = R * (p - ancora) + destino
% TR -> malha original (de ler_peca)
% R -> matriz de rotacao 3x3 (use rot('x',90), ou eye(3) se nao girar)
% ancora ponto [x y z] da PECA ORIGINAL que serve de "pega" 
% destino ponto [x y z] da MONTAGEM onde a ancora deve ficar
% so gira e desloca, nao altera o tamanho nem a forma da peca.
Q  = TR.Points - ancora(:).'; % coloca a ancora na origem
P2 = (R * Q.').' + destino(:).'; % gira e leva a ancora ao destino
TR2 = triangulation(TR.ConnectivityList, P2);
end
