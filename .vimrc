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
Plugin 'msanders/snipmate.vim'                    " :help snipmate
Plugin 'scrooloose/nerdtree'                      " :help nerdtree
Plugin 'scrooloose/syntastic'                     " :help syntastic
Plugin 'skwp/greplace.vim'
Plugin 'tomtom/tcomment_vim'                      " :help tcomment
Plugin 'wincent/command-t'                        " :help command-t
Plugin 'elixir-lang/vim-elixir'
Plugin 'altercation/vim-colors-solarized'         " colors

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line
syntax enable
filetype plugin indent on

augroup myfiletypes
  " Clear out old autocmds in grp
  autocmd!
  autocmd FileType ruby,eruby,yaml,elixir setlocal ai sw=2 sts=2 et " autoindent with two spaces, always expand tabs
  autocmd FileType ruby,eruby,yaml,elixir setlocal path+=lib
  autocmd FileType ruby,eruby,yaml,elixir setlocal colorcolumn=80
  autocmd FileType ruby,eruby,yaml,elixir setlocal iskeyword+=? " Make ?s part of words
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

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ctags
set tags=./tags;

" better esc
:imap jk <ESC>

" powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)
