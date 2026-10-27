# Simulação

---

## Montagem / encaixe das peças

Os STL estão em `stl/`

| Função | O que faz |
|---|---|
| `ler_peca('nome')` | lê o STL (em mm) e devolve a malha |
| `rot('x', 180)` | matriz de rotação em torno de X, Y ou Z (graus) |
| `mover_peca(TR, R, ancora, destino)` | `p' = R·(p − ancora) + destino` |
| `mostrar(TR, cor, alfa)` | desenha a malha |
| `dimensoes(TR, 'nome')` | imprime limites e tamanho |

## Passos
1. `ver_pecas` — ver todas as peças como vieram e entender que cada uma tem origem própria.
2. `encaixes` — código para encaixar todas as peças

### Encaixe 1
