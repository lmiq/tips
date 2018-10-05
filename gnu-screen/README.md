# Usando o screen

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







