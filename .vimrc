set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set laststatus=2
set cursorline
set spelllang=en
set nocompatible

set wildmenu
set wildignorecase
set wildmode=list:full
set path=.,**
set wildignore+=*.swp,*.bak
set wildignore+=*.pyc,*.class,*.sln,*.Master,*.csproj,*.csproj.user,*.cache,*.dll,*.pdb,*.min.*
set wildignore+=*/.git/**/*,*/.hg/**/*,*/.svn/**/*
set wildignore+=*/min/*
set wildignore+=tags,cscope.*
set wildignore+=*.tar.*

"filetype plugin on
"set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'

" IDE
Plug 'easymotion/vim-easymotion' " search in file
Plug 'scrooloose/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'christoomey/vim-tmux-navigator' " navigation
Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'dense-analysis/ale' " error references
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " files search
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' } " autocompletation
Plug 'jiangmiao/auto-pairs' " auto create paris for tags, brakets, etc
Plug 'alvan/vim-closetag' " autocomplete tag pairs or tag combos
Plug 'elixir-editors/vim-elixir' " Elixir plugin
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' } " Python

" TS
Plug 'leafgarland/typescript-vim'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast = "hard"
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'elixir': ['mix_format'],
\}

let g:ale_linters = {
\		'typescript': ['tsserver']
\}

let g:ale_fix_on_save = 1
let g:ale_sign_error = '‚ùå'
let g:ale_sign_warning = '‚ö†Ô∏è'

let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>fi :Rg<CR>
