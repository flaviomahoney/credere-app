# API Sonda Marte - Credere <h1>

## Descrição <h2>

O projeto consiste de uma API ou um app no qual pega a localização de uma sonda que acabou de pousar em marte, e baseado em sua posição inicial lhe da mobilidade, usando uma matriz 5x5 como referência.
Exemplo:
  (0,4) | (1,4) | (2,4) | (3,4) | (4,4)
  (0,3) | (1,3) | (2,3) | (3,3) | (4,3)
  (0,2) | (1,2) | (2,2) | (3,2) | (4,2)
  (0,1) | (1,1) | (2,1) | (3,1) | (4,1)
  (0,0)>| (1,0) | (2,0) | (3,0) | (4,0)
  
Obs: a posição atual seria 0,0 e a seta significa a direção.
  
* E - Esquerda
* D - Direita
* C - Cima
* B - Baixo
  
* GE - girar 90 graus à esquerda
* GD - girar 90 graus à direta
* M - movimentar. Para cada comando M a sonda se move uma posição na direção à qual sua face está apontada.
  
  
  

