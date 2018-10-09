# Usando o Google Drive para backup

Com um e-mail institucional você tem acesso a um google drive com
armazenamento ilimitado. É interessante pensar em usar isso para manter
um backup dos seus arquivos e mesmo para usar como diretório de trabalho
permanente e acessível de qualquer lugar. 

Para fazer isso, recomendo usar o sincronizador "rclone". 

1. Instale com:

`sudo apt install rclone`

Todos os detalhes sobre o rclone: https://rclone.org/

2. Configure o rclone com

`rclone config`

Preste atenção no nome que você vai dar para o diretório remoto. Eu usei
o nome `"Drive"`, e isso afeta como usar o script do item 3.

3. Copie o arquivo `gdrive` disponível aqui para algum diretório que
esteja no seu PATH. 

4. Edite o arquivo prestanto atenção no nome do
diretório remoto, que deve ser o mesmo que você deu na configuração do
rclone. Preste bem atenção no diretório local que você pretende
sincronizar (CUIDADO!!! Se sincronizar um diretório local cheio de coisas
com um vazio remoto, ou vice-versa, na direção errada, pode apagar tudo
que tem em um deles!!!). 

5. Para usar o rclone com o script fornecido, basta usar:

`gdrive push`  
para enviar as modificações do diretório local ao diretório remoto.

`gdrive pull`  
para trazer as modificações do diretório remoto para o diretório local.


