function TR = ler_peca(nome)
% Le um STL da pasta stl e devolve a malha (unidade: mm).
% TR = ler_peca('caixav3') <- nao precisa escrever ".stl"
pasta = fullfile(fileparts(mfilename('fullpath')), 'stl');
arq = fullfile(pasta, [nome '.stl']);
if ~exist(arq, 'file')
    error('Nao achei %s. Confira o nome (sem .stl) e se a pasta stl/ esta ao lado deste arquivo.', arq);
end
T = stlread(arq);
TR = triangulation(T.ConnectivityList, double(T.Points));
end
