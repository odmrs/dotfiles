"Plugin section"
call plug#begin('~/.vim/plugged/')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries'}
Plug 'LunarWatcher/auto-pairs'
Plug 'rust-lang/rust.vim'
Plug 'danishprakash/vim-yami'
Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
call plug#end()

" Default colorscheme"
colorscheme yami
set relativenumber

"NerdTree"
nnoremap <C-b> :NERDTreeToggle<CR>

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

" Rust
let g:rust_clip_command = 'xclip -selection clipboard'
let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0
