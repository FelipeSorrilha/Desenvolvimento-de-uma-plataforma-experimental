function R = rot(eixo, graus)
% ROT Matriz de rotacao 3x3 em torno de um eixo global ('x', 'y' ou 'z'),
a = deg2rad(graus);  c = cos(a);  s = sin(a);
switch lower(eixo)
    case 'x', R = [1 0 0;  0 c -s;  0 s c];
    case 'y', R = [c 0 s;  0 1 0;  -s 0 c];
    case 'z', R = [c -s 0;  s c 0;  0 0 1];
    otherwise, error('eixo deve ser ''x'', ''y'' ou ''z''');
end
end
