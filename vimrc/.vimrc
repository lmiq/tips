" for vundle
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'joshdick/onedark.vim'
Plugin 'lifepillar/vim-solarized8'
Plugin 'morhetz/gruvbox'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'jpalardy/vim-slime'
Plugin 'mroavi/vim-julia-cell'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent off    " required 'on' for vundle?

set guifont=Julia\ Mono\ Regular\ 11
set ve=all
set bs=eol,start,indent
set redraw
set ruler
set showmode
set shiftwidth=4 smarttab
set tabstop=8 softtabstop=0
set expandtab

syntax off
set nohlsearch
"set hlsearch
let loaded_matchparen=1
set textwidth=1000
"set cursorline

"com Text set textwidth=72 | set spl=en_us spell 
"com Textbr set textwidth=72 | set spl=pt spell  
"com Textes set textwidth=72 | set spl=es spell  
"com Code set textwidth=1000 | set nospell
com Text set spl=en_us spell 
com Textbr set spl=pt spell  
com Textes set spl=es spell  
com Code set nospell

" From vimrc_example.vim distributed with Vim 7. When editing a file,
" " always jump to the last known cursor position. Don't do it when the
" " position is invalid or when inside an event handler (happens when
" " dropping a file on gvim).
autocmd BufReadPost *
  \ if line("'\"") > 1 && line("'\"") <= line("$") |
  \   exe "normal! g`\"" |
  \ endif 


"Easy navigation between tabs
map tn :tabnext<CR>
map tp :tabprev<CR>

"type make to mean make! to build quickly underlying stuff
map make :make!<CR>

hi Spellbad ctermbg=red
hi Visual ctermbg=231 ctermfg=240

let g:gruvbox_italic=1

if has("gui_running")
    colorscheme forest-night
    let hostname = hostname()
    if hostname == "pitico"
      colorscheme forest-night
      set guifont=Julia\ Mono\ Regular\ 11
      set lines=56 columns=135
      syntax on
    elseif hostname == "leandro"
      set lines=49 columns=90
    else
      set lines=49 columns=90
    endif
else
    colorscheme default
endif

syntax on

hi clear SpellBad
hi SpellBad cterm=underline,bold
hi SpellBad ctermfg=red  
hi SpellBad gui=undercurl,bold
hi SpellBad guifg=red

" soft wrapping of long-lines (no true line-breaks), and map j and k:
set wrap linebreak
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')





