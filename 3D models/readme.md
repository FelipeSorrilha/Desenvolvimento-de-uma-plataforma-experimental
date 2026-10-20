# Modelos 3D

## helice

### Hélice que poderá ser utilizada junto com o Motor DC.

Inicialmente, será testado essa hélice com 2 pás.

![Suporte motor drone](imagens/helice.png)

---

## suporte-motor-drone

### Suporte onde o Motor DC 555-2990 vai ser encaixado.

O suporte foi projetado com uma abertura lateral e furos para os parafusos. Assim, o motor pode ser encaixado com facilidade, após apertar os parafusos, o suporte segura o motor.

Do outro lado, 5 furos foram posicionados para parafusar na peça encaixe-arm-motordrone. Os 5 parafusos em forma de cruz permitem que o suporte pode ser colocado tanto na vertical quanto na horizontal.

![Suporte motor drone](imagens/suporte-motor-drone1.png)

Em baixo do suporte, uma abertura foi feita para encaixar o encoder AS5047p.

![Vista de cima](imagens/suporte-motor-drone2.png)

![Vista de baixo](imagens/suporte-motor-drone3.png)

---

## tampa-motor-drone

### Tampa para fechar e fixar o encoder em baixo do suporte do motor.

Essa tampa foi projetada para levantar um pouco a altura do encoder, deixando um pequeno espaço para os fios passarem.

![Tampa da peça anterior](imagens/tampa-motor-drone.png)

---

## encaixe-arm-motordrone

### Encaixe que fixa o suporte do motor ao braço

Esse encaixe possui 3 furos que serão utilizados para fixar as duas peças.

Na horizontal, os outros 2 furos são utilizados para fixar o encaixe à peça arm.

![Encaixe-arm-motordrone](imagens/encaixe-arm-motordrone.png)

---

## arm

### Braço que fixa a junção do suporte que segura o motor ao hub central.

Esse braço possui duas extremidades. A primeira com 2 furos é utilizada para fixar a peça encaixe-arm-motordrone, enquanto a outra extremidade com 4 furos é utilizada para fixar o braço ao hub central.

![Arm visto de cima](imagens/arm.png)

---

## central-hub

### Hub que fica no centro, tem espaço para o acelerômetro e segura os dois braços.

O furo no meio será utilizado para encaixar o eixo que será fixo e girará junto com os rolamentos. Enquanto isso, os 4 furos de cada lado são utilizados para fixar os braços

![Hub central](imagens/central-hub1.png)

Em baixo, há um espaço para encaixar o acelerômetro. 

![Vista de baixo com outra coloração para facilitar a visualização](imagens/central-hub2.png)

---

## tampaCentralHub

### Tampa que fixa o acelerômetro em baixo do hub central.

Um pequeno suporte eleva a altura do acelerômetro. Alguns furos foram feitos para a passagem da fiação.

![Tampa do Hub Central](imagens/tampaCentralHub.png)

---

## Junção da primeira parte

### Formação da primeira parte, "gangorra".

Juntando as peças - suporte-motor-drone (2x), encaixe-arm-motordrone (2x), arm (2x) e central-hub - é possível visualizar a primeira parte da plataforma, que funciona como uma gangorra.

![Peças encaixadas](imagens/encaixes1.png)

![Outra visualização onde é possível ver os furos ligados](imagens/encaixes2.png)

---

## novoTopo

### Topo do projeto, onde ficam os rolamentos e o eixo que segura o hub central.

De cada lado, um rolamento 608 será encaixado, enquanto um eixo irá atravessar eles e o hub central.

![Peças encaixadas](imagens/novotopo1.png)

Em um dos lados, um encoder AS5047P será utilizado para medir a inclinação da "gangorra".

![Peças encaixadas](imagens/novotopo2.png)

---

## tampaNovotopo

### Tampa que segura o encoder do novoTopo.

Uma tampa com pequenos suportes para deixar espaço para fiação irá prender o encoder AS5047p na lateral do novoTopo

![Peças encaixadas](imagens/tampaNovoTopo.png)

---

## eixoRolamentosEnconders

### Eixo que irá atravessar as peças.

Esse eixo girará junto com os rolamentos e será fixado no hub central. Em uma das extremidades, um imã será fixado para que o encoder possa medir a inclinação.

![Peças encaixadas](imagens/eixoRolamentosEncoders.png)

---

## Y1 e Y2

### Duas peças que formam uma estrutura em formato de "Y".

Essas peças foram modeladas para que possam ser encaixadas e parafusadas.

Ela foi separada em duas peças para que fosse possível passar a fiação enquanto mantem esse formato de "Y". 

No topo dela, o novoTopo será fixado com parafusos. Em baixo, uma pequena parede será utilizada para limitar a rotação no plano XY. Um pequeno furo no centro será utilizado para fixar essa estrutura no encoder yaw que fica dentro da caixa.

![Peças encaixadas](imagens/y1ey2_1.png)

![Peças encaixadas](imagens/y1ey2_2.png)

---

## Junção da segunda parte

### Formação da segunda parte em formato de "Y".

Juntando Y1, Y2, novoTopo e o eixoRolamentosEncoders, formamos a estrutura que sustentará a "gangorra", permitirá que ela possa se inclinar e poder girar 120° graus

![Peças encaixadas](imagens/encaixes3.png)

---

## Junção da primeira parte com a segunda

### Formação de tudo que ficará em cima da caixa.

Juntando todas essas peças, temos tudo que ficará em cima da caixa, que serve como base.

![Peças encaixadas](imagens/parte1+2.png)

![Peças encaixadas](imagens/parte1+2_2.png)

Do jeito que foi projetado, a "gangorra" (primeira parte) tem aproximadamente ±51,5° graus de liberdade, encostando no "Y" no máximo.

![Peças encaixadas](imagens/parte1+2_3.png)

![Peças encaixadas](imagens/parte1+2_4.png)

---

## caixav3

### Caixa onde fica o encoder de Yaw e microcontrolador.

A caixa (de ponta cabeça na foto) foi projetada para que o "Y" possa rotacionar aproximadamente 120 graus, enquanto deixa outros 120 graus para passagem de fiação.

No Centro, um cilindro com furos foi posicionado para poder fixar a peça RolamentoOldham-yaw. Peça qual conterá todo o dispositivo que permite o Y rotacionar.

![Peças encaixadas](imagens/caixav3_1)]

![Peças encaixadas](imagens/caixav3_2)

Alguns furos foram feitos nas paredes para possibilitar a passagem de ar e passagem de cabos de alimentação.

---

## tampa-solo

### Tampa da caixa.

Uma tampa que, na verdade, fica em contato com o solo.

![Peças encaixadas](imagens/tampa-solo)]

---

## parede-removivel

### Parede da caixa.

Uma parede parafusada que pode ser retirada quando for preciso mudar algo no circuito. Para atualizar o microcontrolador (fazer upload de um novo código), basta passar o cabo por um dos furos da caixa.

![Peças encaixadas](imagens/paredeRemovivel)]

---

## oldham1, oldham2, entreOsOldham

### Peças baseadas na junta oldham.

Três peças que foram baseadas na junta oldham. 

![Peças encaixadas](imagens/oldham1)]

A ideia é que um rolamento posicionado acima do encaixe faça toda a estrutura girar, que irá girar o eixo do encoder de Yaw posicionado em baixo.

![Peças encaixadas](imagens/oldhamjunto1)]

![Peças encaixadas](imagens/oldhamjunto2)]

---

## rolamentoToY

### Peça que gira o oldham.

É uma peça que é fixada no "Y", quando o Y gira, ela gira e movimento a junta oldham, que gira o encoder da base.

![Peças encaixadas](imagens/rolamentoToY)]

---

## RolamentoOldham-yaw

### Peça que é fixada no centro da caixa.

Dentro dessa peça, toda a junta oldham e o rolamento 608 serão posicionados para girar.

![Peças encaixadas](imagens/rolamentooldham-yaw1)]

![Peças encaixadas](imagens/rolamentooldham-yaw2)]

--- 

## Junção da terceira parte

### Encaixe da junta oldham na caixa.

Juntando a junta olhdam, RolamentoOldHam-yaw e rolamentoToY, temos a terceira parte que é encaixada na caixa.

![Peças encaixadas](imagens/oldhamInstaladoNaCaixa1)]

![Peças encaixadas](imagens/oldhamInstaladoNaCaixa2)]

--- 

## Junção da terceira parte

### Encaixe da junta oldham na caixa.

Juntando a junta olhdam, RolamentoOldHam-yaw e rolamentoToY, temos a terceira parte que é encaixada na caixa.

![Peças encaixadas](imagens/oldhamInstaladoNaCaixa1)]

![Peças encaixadas](imagens/oldhamInstaladoNaCaixa2)]

--- 

## Junção da quarta parte

### Encaixe do Y na caixa, parede e tampa.

Fixando a tampa e parede removível, temos a caixa completa (na imagem, o motor em baixo é meramente ilustrativo)

![Peças encaixadas](imagens/montagemCompleta1_1)]

Em cima da caixa, a parte 2 completa (Y) pode ser encaixada.

![Peças encaixadas](imagens/encaixes4_1)]

Desse jeito, a parede do Y fica encaixada com liberdade de se mover 120 graus, enquanto o outro espaço coincide com a passagem de fiação pelo Y.

![Peças encaixadas](imagens/encaixes4_2)]

--- 

## Montagem completa

### Montagem completa usando o modelo 3D de um motor no lugar do encoder de yaw e motores das hélices

![Peças encaixadas](imagens/montagemCompleta1)]

![Peças encaixadas](imagens/montagemCompleta2)]

![Peças encaixadas](imagens/montagemCompleta1_2)]

