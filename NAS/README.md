
# Usando a m3gbackup

A `m3gbackup` tem, neste momento, cerca de 80TB disponíveis para backup. Evitem salvar trajetórias desnecessariamente, porque isso pode enxer o disco rápido.
Mas façam sempre backup de tudo o que for trabalho *de vocês*, isto é, arquivos de input, scripts, programas, resultados, arquivos para reinicar trajetórias, etc.

(mas podem salvar trajetórias se quiserem e acharem urgente, mas tenham claro que vão ter que deletar em algum momento, provavelmente, se a `m3gbackup` ficar cheia. 
Ao mesmo tempo, podem tentar salvar trajetórias com amostragem reduzida.)

## IP

O ip da`m3gbackup` é `177.220.101.109` e a máquina só pode ser acessada de computadores de dentro da UNICAMP.

Sugere-se colocar a linha:

```
177.220.101.109 m3gbackup
```
no arquivo `/etc/hosts` para facilitar a vida, e não precisar repetir os números o tempo todo.

## Senha

Para trocar a senha vocês tem que falar diretamente comigo, porque o comando de trocar
senha usuario por usuário não funciona.

## SSH

Vocês estão acessando um computador linux, com Debian. Podem usar `ssh` normalmente:

```
ssh usuario@177.220.101.109
```

ou

```
ssh usario@m3gbackup
```
caso tenham colocado o nome no `/etc/hosts`. 

## Backup

Recomenda-se fortemente o uso de `rsync` para copiar arquivos, porque este programa faz o backup incremental (não copia arquivos já copiados e só atualiza o que foi modificado). O comando é simples:

```
rsync -av --progress ./Origem usuario@m3gbackup:./DiretorioDestino
```

Caso não tenha instalado `rsync` no seu computador, instale com `sudo apt install rsync`.

## Rsync através de computador intermediário

Como a `m3gbackup` só é acessível de dentro da rede da Unicamp, para copiar desde outros computadores remotos sem ter que copiar para um computador intermediário,
é necessário o seguinte, por exemplo:
```
% rsync -av -e "ssh -A leandro@m3ghub.iqm.unicamp.br ssh" ./arquivo.txt leandro@177.220.101.109:./
```
onde `m3ghub` é o computador de dentro da unicamp que pode ser acessado de fora. Pode ser qualquer compuatador. 

Uma alternativa equivalente é configurar um `proxy jump`, colocando isto no `~/.ssh/config`:

```
Host m3ghub
    User leandro
    HostName 177.220.101.88

Host m3gbackup
    User leandro
    HostName 177.220.101.109
    ProxyJump m3ghub
```

Isto diz que o o acesso à máquina `m3gbackup` tem que ser feito através do "ProxyJump" `m3ghub`. Com isto configurado você pode usar o comando
`rsync` ou `ssh` normalmente direto para a máquina `m3gbackup`, e ele vai pedir duas vezes a senha (para cada máquina). Isto pode ser usado
para acessar outras máquinas internas na Unicamp, como a `kahuna`. 

Fonte: [https://stackoverflow.com/questions/16654751/rsync-through-ssh-tunnel](https://stackoverflow.com/questions/16654751/rsync-through-ssh-tunnel)

## Administração (só para Admin)

Instalar pacotes: https://superuser.com/questions/1557094/how-to-install-bash-and-zsh-on-asustors-nas-linux






