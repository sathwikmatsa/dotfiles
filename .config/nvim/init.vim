call plug#begin(expand('~/.config/nvim/plugged'))
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
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
set laststatus=2
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
" automatically delete all trailing whitespace on save.
autocmd BufWritePre * %s/\s\+$//e

let g:nord_cursor_line_number_background=1
colorscheme nord

let g:lightline={
            \ 'colorscheme': 'nord',
            \ 'separator': { 'left': "", 'right': "" },
            \ 'subseparator': { 'left': '', 'right': '' },
            \}
