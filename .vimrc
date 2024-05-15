"BASIC SETUP"
set nocompatible
filetype plugin on

"FINDING FILES"
set path+=**
set wildmenu
command! -nargs=1 Sw :execute 'vimgrep /<args>/ **/*'

" FILE BROWSING "
let g:netrw_banner=0        " disable annoying banner
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
inoremap <c-n> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-n> <Esc>:Lex<cr>:vertical resize 30<cr>

call plug#begin('~/.vim/plugged/')
call plug#end()

" Default colorscheme"
set relativenumber

"Turn off syntaxe highlight"
syntax off
let g:loaded_matchparen=1

"Search"
set ignorecase
set smartcase

"Move around with hjkl"
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"Set leader"
let mapleader = " "

"toggle terminal"
noremap <Leader>v :botright vertical terminal<CR>
