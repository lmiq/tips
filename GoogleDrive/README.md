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
rclone. 

Preste bem atenção no diretório local que você pretende
sincronizar (CUIDADO!!! Se sincronizar um diretório local cheio de coisas
com um vazio remoto, ou vice-versa, na direção errada, pode apagar tudo
que tem em um deles!!!). 

5. Para usar o rclone com o script fornecido, basta usar:

`gdrive push`  
para enviar as modificações do diretório local ao diretório remoto.

`gdrive pull`  
para trazer as modificações do diretório remoto para o diretório local.

Estas opções não vão deletar os arquivos que não estão presentes no diretório
de destino, o que é mais seguro. Se você quer realmente sincronizar os diretórios,
deletando arquivos, use

`gdrive push sync`  
`gdrive pull sync`  

6. Para verificar as diferenças, sem fazer nada, use:

`gdrive check`

6. Ignorando arquivos

Para ignorar arquivos dentro de um diretório, crie um arquivo chamado `.gdriveignore`,
que contenha as especificações. Por exemplo:
```
#.gdriveignore
*.log
folder/**
```
A sincronização ignorará os arquivos dentro de `folder` e os arquivos `log`. A regra colocada
em um diretório vale para esse diretório e todos os subdiretórios dele. Ou seja, neste caso,
os arquivos `log` de todos os subdiretórios também serão ignorados.


IMPORTANTE: 

Se os comandos acima forem dados de dentro de um sub-diretório do Drive,
apenas o subdiretório será atualizado. Por exemplo, se seu seu Drive está sincronizado
em

`/home/usuario/Drive`

e você está trabalhando em

`/home/usuario/Drive/palestras/`

e executar o comando `gdrive push`, apenas o diretorio `palestras` e o que tem dentro
dele será sincronizado.

Isto acelera muito a sincronização. Para sincronizar todo o Drive, execute os comandos
da raiz do Drive (`/home/usuario/Drive`) ou de qualquer outro lugar fora do Drive.

# Usando o script no nemo (gerenciador de arquivos do Mint)

Rodoando o scritp

`nemo.sh`

serão instalados alguns arquivos que permitem usar a sincronização direto do gerenciador de arquivos
gráfico, usando um click com o botão direito do mouse, como mostra a figura:

![alt text](https://raw.githubusercontent.com/leandromartinez98/tips/master/GoogleDrive/nemo/nemo.png)


Clicando na opção desejada, o diretório corrente será sincronizado com o Google Drive.









