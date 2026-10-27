function dimensoes(TR, nome)
% Imprime os limites e o tamanho de uma peca em mm.
mn = min(TR.Points, [], 1);  mx = max(TR.Points, [], 1);
fprintf('%-24s x[%8.1f %8.1f]  y[%8.1f %8.1f]  z[%8.1f %8.1f]   tamanho %6.1f x %6.1f x %6.1f mm\n', ...
        nome, mn(1), mx(1), mn(2), mx(2), mn(3), mx(3), mx - mn);
end
