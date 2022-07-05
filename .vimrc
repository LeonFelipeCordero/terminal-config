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

filetype plugin on
"set omnifunc=syntaxcomplete#Complete

call plug#begin('~/.vim/plugged')

" Theme
Plug 'morhetz/gruvbox'
Plug 'sonph/onehalf', { 'rtp': 'vim' }

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
Plug 'nvim-lualine/lualine.nvim' " don't know
Plug 'neovim/nvim-lspconfig' " lenguage sever protocol
Plug 'williamboman/nvim-lsp-installer' " language senver protocol

" Elixir
Plug 'elixir-editors/vim-elixir'
Plug 'amiralies/coc-elixir', {'do': 'yarn install && yarn prepack'}

" TS
Plug 'leafgarland/typescript-vim'

" Terraform
Plug 'hashivim/vim-terraform'
Plug 'vim-syntastic/syntastic'
Plug 'juliosueiras/vim-terraform-completion'

call plug#end()

syntax on
set t_Co=256
set cursorline
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"colorscheme gruvbox
let g:gruvbox_contrast = "hard"
let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_contrast_light = "hard"

let g:ale_fixers = {
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\   'elixir': ['mix_format'],
\   'go': ['gofmt'],
\}

let g:ale_linters = {
\		'typescript': ['tsserver'],
\   'go': ['gofmt'],
\}

let g:ale_fix_on_save = 1
let g:ale_sign_error = '‚úò'
let g:ale_sign_warning = '‚ö†'

let mapleader = " "

nmap <Leader>s <Plug>(easymotion-s2)
nmap <Leader>t :NERDTreeFind<CR>
nmap <Leader>f :Files<CR>
nmap <Leader>fi :Rg<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)

let NERDTreeShowHidden=1

" elixir
syntax on
filetype plugin indent on

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
      
