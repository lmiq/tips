# Usando o screen


<img width=400px src=https://user-images.githubusercontent.com/31046348/116999946-becc0880-acb6-11eb-893f-78a0c7d8dbb8.png>


Se não estiver instalado, instale:

`sudo apt install gnu-screen`

Copie o `.screenrc` disponível aqui no seu `/home/usuario/`

1. Iniciar o screen:

`screen -S titulo`

2. Criar nova aba:

`Control-a Control-c`

3. Ir para a próxima janela

`Control-n`

4. Desconectar (Detach)

`Control-a d`

5. Reconectar

`screen -r titulo`

6. Percorrendo o histórico da página:

`Control-a [ESC]`

e use as flechas, page-up, page-down para se mover no histórico.
Para voltar ao uso normal do terminal, pressione `[ESC]` outra vez.







