
# Usando a NAS

A NAS tem, neste momento, cerca de 8TB disponíveis para backup. Não
é grande coisa, então temos que usar com alguma parciomônia. Preferencialmente, salvem todos os arquivos de input das simulações, configurações, textos, etc, e evitem salvar trajetórias desnecessariamente. 

(mas podem salvar trajetórias se quiserem e acharem urgente, mas tenham claro que vão ter que deletar em algum momento, provavelmente, se a NAS ficar cheia. Ao mesmo tempo, podem tentar salvar trajetórias com amostragem reduzida.)

## IP

O ip da NAS é `177.220.101.109` e a máquina só pode ser acessada de computadores de dentro da UNICAMP.

Sugere-se colocar a linha:

```
177.220.101.109 nas
```
no arquivo `/etc/hosts` para facilitar a vida, e não precisar repetir os números o tempo todo.

## Senha

Troque a sua senha no primeiro acesso, com o comando `passwd`. Use uma senha razoavel.

OBS: Não está funcionando.


## SSH

Vocês estão acessando um computador linux, com Debian. Podem usar `ssh` normalmente:

```
ssh usuario@177.220.101.109
```

ou

```
ssh usario@nas
```

## Backup

Recomenda-se fortemente o uso de `rsync` para copiar arquivos, porque este programa faz o backup incremental (não copia arquivos já copiados e só atualiza o que foi modificado). O comando é simples:

```
rsync -av --progress ./Origem usuario@nas:./Destino
```

Caso não tenha instalado `rsync` no seu computador, instale com `sudo apt install rsync`.

## Administração (só para Admin)

Instalar pacotes: https://superuser.com/questions/1557094/how-to-install-bash-and-zsh-on-asustors-nas-linux






