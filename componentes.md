# Componentes

## 1. Motores das Hélices (2x)

### Motor Ideal: Allied Motion CL40 16705

**Especificações:**
- Tensão: 18 V
- Potência: 7 W
- Rotação nominal: 3.050 RPM
- Torque: 22 mN·m
- Corrente nominal: 540 mA
- Corrente de partida: 2,1 A
- Diâmetro do corpo: 40 mm
- Comprimento do corpo: aproximadamente 39,6 mm
- Diâmetro do eixo: 3 mm
- Fixação frontal: 4 parafusos M3 distribuídos em um círculo de 28 mm de diâmetro

### Alternativa 1: Motor DC 555-2290 (12 V, 3.700 RPM)

**Especificações:**
- Tensão: 12 V
- Rotação sem carga: 3.700 RPM
- Rotação no ponto de máxima eficiência: 3.178 RPM
- Torque no ponto de máxima eficiência: 18,51 mN·m
- Potência no ponto de máxima eficiência: 6,13 W
- Corrente no ponto de máxima eficiência: 0,73 A
- Tipo: motor DC escovado
- Diâmetro do corpo: aproximadamente 35,8 mm

**Observações:**

É a alternativa encontrada mais próxima do motor original em termos de especificações. Entretanto, não é um motor *coreless* (sem núcleo de ferro no rotor). Sua maior inércia rotacional pode resultar em uma resposta mais lenta às variações do PWM em comparação com um motor *coreless*.

**Link:** [Motor DC 555-2290 — Loja do Inventor](https://www.lojadoinventor.com.br/motor-dc/motor-dc-12v/motor-dc-12v-modelo-555-2290?parceiro=7846&utm)

### Alternativa 2: Motor Brushless de Drone A2212 1000KV

**Especificações:**
- Tensão de operação: 7,4–14,8 V (baterias LiPo de 2S a 4S)
- Constante de velocidade: 1.000 KV (RPM/V)
- Rotação teórica sem carga: aproximadamente 7.400–14.800 RPM
- Massa: aproximadamente 52 g na versão Racerstar BR2212
- Hélice recomendada: 10 × 4,7 ou 11 × 4,7 polegadas
- Ponto de operação de referência com 11,1 V e hélice 10 × 4,7:
  - Corrente: 15,6 A
  - Potência elétrica: 173 W
  - Empuxo: 885 g
- Tipo: motor brushless *outrunner* (rotor externo)

**Observações:**

É o motor de drone mais interessante encontrado até o momento. Entretanto, é significativamente mais leve e potente que o motor original. Sua construção *outrunner* também apresenta características diferentes de inércia rotacional, o que pode influenciar a resposta do sistema de controle.

O elevado consumo de corrente e os requisitos de acionamento devem ser considerados antes da escolha definitiva.

**Link:** [Motor Brushless A2212 1000KV — AliExpress](https://pt.aliexpress.com/item/1005007786581455.html)

**Status:** o motor DC 555-2290 foi escolhido e está em fase de testes

---

## 2. Hélices


**Observações:**

É possível utilizar uma poucas pás. Portanto, será avaliada a utilização de uma hélice convencional de duas pás, por ser uma alternativa mais simples.

Se a impressão do modelo 3D da hélice não trouxer bons resultados, ela pode vir a ser comprada.

### Alternativa 1: Hélice EP-5030 (5 × 3 polegadas)

Indicada inicialmente para utilização com o motor DC 555-2290.

**Link:** [Hélice EP-5030 5 × 3 — Mercado Livre](https://www.mercadolivre.com.br/helice-5x3-ep5030--estilo-gws/up/MLBU752535912)

### Alternativa 2: Hélice 1045 (10 × 4,5 polegadas)

Indicada inicialmente para utilização com o motor brushless A2212 1000KV.

**Link:** [Hélice 1045 — Shopee](https://shopee.com.br/product/1628346798/51702880594)

---

## 3. Encoders dos Motores

### Encoder ideal: US Digital E8P-512-118

**Especificações:**
- Resolução: 512 linhas por revolução (PPR)
- Resolução em quadratura: 2.048 contagens por revolução (CPR)
- Tensão de alimentação: 5 V

### Alternativa 1: Encoder Magnético AS5047P

**Especificações:**
- Tipo: sensor magnético de posição angular
- Alimentação: 5 V, dependendo da placa utilizada
- Velocidade máxima de rotação: até 28.000 RPM, conforme as condições de operação

**Observações:**

O AS5047P é compacto e utiliza medição magnética sem contato. Entretanto, sua integração exige um ímã alinhado com o motor.

**Link:** [Encoder Magnético AS5047P — AliExpress](https://pt.aliexpress.com/item/1005003162339789.html)

### Alternativa 2: Encoder Incremental E6B2-CWZ6C

**Especificações:**
- Tipo: encoder rotativo incremental industrial
- Tensão de alimentação: 5–24 V, dependendo da versão
- Frequência máxima de resposta: até 100 kHz, dependendo do modelo

**Observações:**

É muito maior e mais pesado, o que pode dificultar sua instalação.

**Link:** [Encoder E6B2-CWZ6C — AliExpress](https://pt.aliexpress.com/item/1005007448612542.html)

O encoder AS5047p está em fase de testes e sendo considerado na modelagem 3D.

---

## 4. Encoder de Yaw (Rotação da Base)

### Encoder Ideal: US Digital E3-1024-984

**Especificações:**
- Resolução: 1.024 linhas por revolução (PPR)

### Alternativa: Encoder E6B2-CWZ6C

**Especificações:**
- Resolução anunciada: 1.024 pulsos por revolução (PPR)
- Diâmetro do corpo: aproximadamente 40 mm

**Observações:**

Esse encoder industrial está sendo considerado como substituto do encoder original de yaw. Suas dimensões e seu sistema de fixação deverão ser considerados no projeto da caixa da base.

É necessário confirmar a versão exata e sua resolução antes da compra, pois existem diferentes variantes da série E6B2.

**Link:** [Encoder E6B2-CWZ6C 1024 P/R — AliExpress](https://pt.aliexpress.com/item/1005007369790987.html)

---

## 5. Sensor IMU (Acelerômetro e Giroscópio)

### Sensor Selecionado: BMI088

Esse sensor será posicionado em baixo do hub central para auxiliar e confirmar as inclinações da plataforma.

**Link:** [Módulo IMU ICM-42688-P — AliExpress]https://pt.aliexpress.com/item/1005009898672911.html?spm=a2g0o.order_list.order_list_main.23.710d1802Q2uimT&gatewayAdapt=glo2bra)

---

## 6. Microcontrolador

### Alternativa 1: Arduino Mega 2560

Plataforma de desenvolvimento conhecida e acessível.

### Alternativa 2: STM32 Nucleo-F446RE

Placa de desenvolvimento baseada no microcontrolador STM32F446RE.

**Observações:**

O STM32 é uma alternativa promissora para esta aplicação, pois possui temporizadores de hardware adequados para geração de PWM e leitura de encoders. Pesquisas recentes na área de controle realizadas no ITA e UNESP mostram que esse microcontrolador pode ser ideal para esse tipo de projeto.

Entretanto, essa plataforma ainda não foi utilizada no projeto, sendo necessário familiarizar-se com seu ambiente de desenvolvimento e com a configuração de seus periféricos.

**Status:** a escolha ainda está pendente.

---
