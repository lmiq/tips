"set guifont=Courier\ 10\ Pitch\ 10
set guifont=Ubuntu\ Mono\ Regular\ 12
set ve=all
set bs=eol,start,indent
set redraw
set ruler
set showmode
colorscheme default
"colorscheme pablo
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

"Use gui with desired dimensions
if has('gui_running')
  set lines=56 columns=135
  syntax on
endif

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
