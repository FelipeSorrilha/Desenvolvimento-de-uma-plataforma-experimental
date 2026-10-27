function h = mostrar(TR, cor, alfa)
% MOSTRAR  Desenha a malha no eixo atual. cor = [r g b] (0 a 1); alfa = transparencia (1 = solido).
if nargin < 2, cor  = [0.60 0.70 0.85]; end
if nargin < 3, alfa = 1; end
h = patch('Faces', TR.ConnectivityList, 'Vertices', TR.Points, ...
          'FaceColor', cor, 'EdgeColor', 'none', 'FaceAlpha', alfa);
end
