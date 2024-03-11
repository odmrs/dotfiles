"Plugin section"
call plug#begin('~/.vim/plugged/')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'LunarWatcher/auto-pairs'
Plug 'jaredgorski/Mies.vim'
call plug#end()

" Default colorscheme"
colorscheme mies
set relativenumber
set bg=light

"NerdTree built-in"
inoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>
nnoremap <c-b> <Esc>:Lex<cr>:vertical resize 30<cr>

"Move around with hjkl"
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>

"Refact code"
nmap <leader>r <Plug>(coc-rename)

"Set leader"
let mapleader = " "

"toggle terminal"
noremap <Leader>v :botright vertical terminal<CR>

" disable all linters as that is taken care of by coc.nvim
let g:go_diagnostics_enabled = 0
let g:go_metalinter_enabled = []

" don't jump to errors after metalinter is invoked
let g:go_jump_to_error = 0

" run go imports on file save
let g:go_fmt_command = "goimports"

" automatically highlight variable your cursor is on
let g:go_auto_sameids = 0

" About Syntax
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_generate_tags = 1
let g:go_bin_path = $HOME."/go/bin"
