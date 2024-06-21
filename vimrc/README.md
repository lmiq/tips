# .vimrc

Este arquivo define algumas coisas uteis, como os comandos:

`:Text`

que ativa a correção ortográfica em ingles e máximo de 72 colunas

`:Textbr`

que ativa a correação ortográfica em português e máximo de 72 colunas

`:Code`

Que desativa as correções e o limite de número de colunas


Além disso, define `ve=all`, que facilita a navegação no arquivo.


Para instalar o suporte para LaTeX melhorzinho:

1. Instalar o vimp-lug (https://github.com/junegunn/vim-plug):
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

2. Colocar no .vimrc:

```
call plug#begin()
Plug 'lervag/vimtex'
call plug#end()
```

E iniciar o vim e usar: `:PlugInstall`.


