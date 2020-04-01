call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'rust-lang/rust.vim'
Plug 'vim-syntastic/syntastic'
call plug#end()

set number
set relativenumber
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set wildmenu
filetype indent on
set showmatch
set incsearch
set hlsearch
syntax enable
nnoremap j gj
nnoremap k gk
nnoremap <CR> :nohlsearch<CR><CR>
set autoindent
set smartindent
set cindent
set ruler
set noshowmode
set wrap
set mouse=a
set backspace=indent,eol,start
set undofile
set undodir=$HOME/.local/share/nvim/undodir
set clipboard+=unnamedplus
set wildmode=longest,list,full
set splitbelow splitright
set laststatus=2
" automatically delete all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

let g:nord_cursor_line_number_background=1
colorscheme nord

let g:lightline={
            \ 'colorscheme': 'nord',
            \ 'separator': { 'left': "", 'right': "" },
            \ 'subseparator': { 'left': '', 'right': '' },
            \}

" enable automatic running of :RustFmt when you save a buffer
let g:rustfmt_autosave = 1
let g:syntastic_cpp_compiler_options = "-std=c++2a"

let mapleader="\<Space>"
nnoremap <Leader>f :Files<CR>
nnoremap <Leader>F :vsplit<CR>:Files<CR>
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>r :SyntasticReset<CR>
