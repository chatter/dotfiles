" =============================================================================
" Vundle stuff
" =============================================================================
set nocompatible              " be iMproved, required
set encoding=utf-8
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" my bundles
Plugin 'kchmck/vim-coffee-script'
Plugin 'Lokaltog/vim-powerline'
Plugin 'msanders/snipmate.vim'		" :help snipmate
Plugin 'scrooloose/nerdtree'		" :help nerdtree
Plugin 'scrooloose/syntastic'		" :help syntastic
Plugin 'skwp/greplace.vim'
Plugin 'tomtom/tcomment_vim'		" :help tcomment
Plugin 'tpope/vim-rbenv'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'
Plugin 'wincent/command-t'		" :help command-t
Plugin 'vim-ruby/vim-ruby'

" colors
Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" =============================================================================
" Ruby stuff
" =============================================================================
syntax enable
filetype plugin indent on

augroup myfiletypes
  " Clear out old autocmds in grp
  autocmd!
  " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml setlocal ai sw=2 sts=2 et
  autocmd FileType ruby,eruby,yaml setlocal path+=lib
  autocmd FileType ruby,eruby,yaml setlocal colorcolumn=80
  " Make ?s part of words
  autocmd FileType ruby,eruby,yaml setlocal iskeyword+=?
augroup END

" =============================================================================
" Generic Keybindings
" =============================================================================
let mapleader=','

" git blame
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

" Edit another file in the same directory as the current file
" uses expression to extract path from current file's path
map <Leader>e :e <C-R>=escape(expand("%:p:h"),' ') . '/'<CR>
map <Leader>s :split <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>
map <Leader>v :vnew <C-R>=escape(expand("%:p:h"), ' ') . '/'<CR>

" easier grep result navigation
map <C-N> :cn<CR>
map <C-P> :cp<CR>

" easier split pane navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" solarized
" set background=light
let g:solarized_termtrans=1
let g:solarized_contrast="high"
let g:solarized_visibility="high"
colorscheme solarized
call togglebg#map("<F5>")

" powerline
set laststatus=2
set t_Co=256

" ack
set grepprg=ack

" snipmate
:filetype plugin on

" nerdtree
" show automatically if no file specified
autocmd vimenter * if !argc() | NERDTree | endif
" close vim if nerdtree only pane
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" easier way to open nerdtree
nmap <Leader>nt :NERDTree<CR>

" ctags
set tags=./tags;

" better esc
:imap jk <ESC>
