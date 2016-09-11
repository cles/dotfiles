set nocompatible
filetype off

" Vundle setup
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" UI
Plugin 'whatyouhide/gotham'
Plugin 'bling/vim-airline'
Plugin 'edkolev/tmuxline.vim'
Plugin 'edkolev/promptline.vim'

" just tpope things
Plugin 'tpope/vim-projectionist'
Plugin 'tpope/vim-dispatch'
Plugin 'tpope/vim-surround'

" vimfiler
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'

" file search
Plugin 'ctrlpvim/ctrlp.vim'

" ag
Plugin 'rking/ag.vim'

" code completion
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

" autoclose
Plugin 'cohama/lexima.vim'

" trailing whitespace
Plugin 'ntpeters/vim-better-whitespace'

" git
Plugin 'tpope/vim-fugitive'

" rails
Plugin 'tpope/vim-rails'

" slim
Plugin 'slim-template/vim-slim'

" elixir
Plugin 'elixir-lang/vim-elixir'
Plugin 'slashmili/alchemist.vim'

" rust
Plugin 'rust-lang/rust.vim'

" scala
Plugin 'derekwyatt/vim-scala'

" clojure
Plugin 'tpope/vim-salve'
Plugin 'tpope/vim-fireplace'

" js
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'

" React/JSX
Plugin 'mxw/vim-jsx'

" Elm
Plugin 'lambdatoast/elm.vim'

" Ember
Plugin 'AndrewRadev/ember_tools.vim'

" handlebars
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
colorscheme gotham256

" Leader
let mapleader = ","

set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete commands
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands

" of course
syntax on

" Numbers
set relativenumber
set number
set numberwidth=5

" Make it obvious where 80 characters is
set textwidth=80

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" No bad habits
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Splittin consistent with tmux
nnoremap <C-w>e <C-w>v
nnoremap <C-w>o <C-w>s

" Various shortcuts
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>

" Buffers
nnoremap <leader>bls :buffers<CR>
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprev<CR>
nnoremap <leader>bq :bdelete<CR>
nnoremap <leader>bd :bufdo

" Tabs
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tq :tabclose<CR>
nnoremap <leader>td :tabdo

" Views
nnoremap <leader>we <C-w>v
nnoremap <leader>wo <C-w>s
nnoremap <leader>wq <C-w>q
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>w+ <C-w>+
nnoremap <leader>w- <C-w>-
nnoremap <leader>w< <C-w><
nnoremap <leader>w> <C-w>>

" CtrlP
nnoremap <leader>p :CtrlP<CR>
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_regexp = 1

" Ag
nnoremap <leader>ag :Ag
let g:ag_working_path_mode="r"

" use Ag from CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:ctrlp_use_caching = 0

" ESC is always too far
inoremap jj <Esc>

" Fugitive (Git)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
vmap <leader>gb :Gblame<CR>

" vimfiler
let g:vimfiler_as_default_explorer = 1
nnoremap <leader>tr :VimFilerExplorer<CR>

" vim-mustache-handlebars
let g:mustache_abbreviations = 1

" lexima
let g:lexima_enable_basic_rules = 1
let g:lexima_enable_newline_rules = 1
let g:lexima_enable_endwise_rules = 1

" syntastic + jshint
let g:syntastic_javascript_checkers = ['jshint']

" autoreload conf
:au! BufWritePost $MYVIMRC source $MYVIMRC
