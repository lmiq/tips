"for vundle

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'JuliaEditorSupport/julia-vim'
Plugin 'tomasiser/vim-code-dark'
Plugin 'sainnhe/vim-color-forest-night'
Plugin 'joshdick/onedark.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required




set guifont=Ubuntu\ Mono\ Regular\ 10
set ve=all
set bs=eol,start,indent
set redraw
set ruler
set showmode
set shiftwidth=2
set tabstop=6
set expandtab
syntax off
set nohlsearch
"set hlsearch
let loaded_matchparen=1
set textwidth=1000
"set cursorline

com Text set textwidth=72 | set spl=en_us spell 
com Textbr set textwidth=72 | set spl=pt spell  
com Textes set textwidth=72 | set spl=es spell  
com Code set textwidth=1000 | set nospell

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

hi Spellbad ctermbg=red
hi Visual ctermbg=231 ctermfg=240

if has("gui_running")
    colorscheme morning
    let hostname = hostname()
    if hostname == "pitico"
      colorscheme tango-morning
      set guifont=Ubuntu\ Mono\ Regular\ 12
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





