let mapleader =","

call plug#begin('~/local/share/nvim/plugged')
"    Plug 'neoclide/coc.nvim', {'branch': 'relea}
    Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
    Plug 'vim-airline/vim-airline'
    Plug 'sirver/ultisnips'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    Plug 'mattn/emmet-vim'
    Plug 'othree/javascript-libraries-syntax.vim'
    Plug 'dhruvasagar/vim-table-mode'
    Plug 'tpope/vim-surround'
    Plug 'ap/vim-css-color'
    Plug 'joshdick/onedark.vim'
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    Plug 'markonm/traces.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'airblade/vim-gitgutter'
    Plug 'tpope/vim-fugitive'
    Plug 'flazz/vim-colorschemes'
call plug#end()

filetype plugin indent on
nnoremap c "_c
set autoindent
set bg=light
set cc=80
set clipboard+=unnamedplus
set colorcolumn=120
set cursorline
set encoding=utf-8
set expandtab
set go=a
set ignorecase
set incsearch
set laststatus=0
set expandtab
set mouse=a
set nocompatible
set nohlsearch
set noruler
set noshowcmd
set noshowmode
set nowrap
set number relativenumber
set numberwidth=5
set shiftwidth=4
set showmatch
set softtabstop=4
set spelllang=es
set splitbelow
set splitright
set tabstop=4
set title
set ttyfast
set wildmode=longest,list,full
syntax on

colorscheme onedark
"colorscheme wombat

nmap <C-n> :NERDTreeToggle<CR>
let g:user_emmet_expandabbr_key = '<C-a>,'


" Corrección ortográfica
nnoremap <F6> :setlocal spell! spelllang=es<ENTER>
nnoremap <F7> :setlocal spell! spelllang=sv<ENTER>

" MARKDWON
map <leader>!! i![]()<ESC>i

" Navigating with guides
	inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
	map <leader><leader> <Esc>/<++><Enter>"_c4l


" Otros atajos
nnoremap <leader>cw :w! \| !pandoc % -o %<.docx 
nnoremap <leader>cp :w! \| !pandoc % -o %<.pdf
nnoremap vs :vs<CR>
nnoremap hs :sp<CR>
nnoremap <C-L> <C-W><C-L> 
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-K> <C-W><C-K> 
nnoremap <C-J> <C-W><C-J> 
nnoremap tn :tabnew<CR> 
nnoremap tk :tabnext<CR> 
nnoremap tj :tabprev<CR> 
nnoremap to :tabo<CR> 
nnoremap <C-S> :%s/ 

" Crear mapas mentales desde markdown

nnoremap <leader>mm :w! \| !markmap --no-toolbar %

" Cosas para COC
source $HOME/.config/nvim/plug-config/coc.vim

"VimWiki

let wiki_1 = {}
let wiki_1.path = '~/vimwiki/' 
let wiki_1.syntax = 'markdown'
let wiki_1.ext = 'md'

let wiki_2 = {}
let wiki_2.path = '~/vimwiki/sueco/' 
let wiki_2.syntax = 'markdown'
let wiki_2.ext = 'md'

let g:vimwiki_list = [wiki_1, wiki_2]

"let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

