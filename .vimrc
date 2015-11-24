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

" file search
Plugin 'kien/ctrlp.vim'

" ag
Plugin 'rking/ag.vim'

" code completion
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

" git
Plugin 'tpope/vim-fugitive'

" rails
Plugin 'tpope/vim-rails'

" elixir
Plugin 'elixir-lang/vim-elixir'

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

" handlebars
Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()
filetype plugin indent on

let g:airline_powerline_fonts = 1
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

" netrw
let g:netrw_liststyle=3

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
nnoremap <leader>p :CtrlP<CR>
nnoremap <leader>tre :Vex<CR>
nnoremap <leader>tro :Sex<CR>
nnoremap <leader>tc :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprevious<CR>
nnoremap <leader>tq :tabclose<CR>
nnoremap <leader>td :tabdo
nnoremap <leader>we <C-w>v
nnoremap <leader>wo <C-w>s
nnoremap <leader>wj <C-w>j
nnoremap <leader>wk <C-w>k
nnoremap <leader>wh <C-w>h
nnoremap <leader>wl <C-w>l
nnoremap <leader>w+ <C-w>+
nnoremap <leader>w- <C-w>-

" No bad habits
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" ESC remap because Kinesis Advantage Pro ESC is so bad
inoremap jj <Esc>

" reload vimrc automagically after any modification
:au! BufWritePost $MYVIMRC source $MYVIMRC

" Fugitive (Git)
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
vmap <leader>gb :Gblame<CR>
