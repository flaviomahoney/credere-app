# API Sonda Marte - Credere <h1>
  
## Link para Utilização <h2>
(https://credere-app.herokuapp.com/)

## Descrição <h2>

O projeto consiste de uma API ou um app no qual pega a localização de uma sonda que acabou de pousar em marte, e baseado em sua posição inicial lhe da mobilidade, usando uma matriz 5x5 como referência.
Exemplo:
  
  (0,4) | (1,4) | (2,4) | (3,4) | (4,4)
  ----- | ----- | ----  | ----  | -----
  (0,3) | (1,3) | (2,3) | (3,3) | (4,3)
  (0,2) | (1,2) | (2,2) | (3,2) | (4,2)
  (0,1) | (1,1) | (2,1) | (3,1) | (4,1)
  (0,0)>| (1,0) | (2,0) | (3,0) | (4,0)
 
Dessa forma podemos pensar um eixo X e Y, onde X seria a coluna e Y a fileira.
  
Obs: a posição atual seria 0,0 e a seta significa a direção.
  
* E - Esquerda
* D - Direita
* C - Cima
* B - Baixo
-------------------------
  
* GE - girar 90 graus à esquerda
* GD - girar 90 graus à direta
* M - movimentar. Para cada comando M a sonda se move uma posição na direção à qual sua face está apontada.


## Utilização <h2>
  
A utilização é bem simples, é necessário apenas entrar dentro do programa e entrar com um input válido como por exemplo o input abaixo:

Input: GE,M,M,M

Explicação: Dessa forma a sonda viraria à esquerda e daria 3 passos, chegando na posição 0,3.

Portanto a resposta seria.

*X: 0
*Y: 3
*Face: C

Explicação: A face por ter virado 90º à esquerda virou o bico para cima e andou três casas, portanto seria um input válido com uma resposta válida.


**Exemplos Não Válidos**

1. Input1: XXXXXXXXXXX
2. Input2: M,M,M,M,M,M,M,M
3. Input3: GD,M

1. O Input 1 nós temos um input que não compões o programa, portanto sempre virá zerado.
2. O Input 2 não aceitará a criação pois a sonda estará andando 8 vezes para a direita, estourando o tamanho da matriz proposta.
3. O Input 3 não seria aceito pois viramos a direita logo em seguidas andamos para fora do quadrante.
  

  
  
  

