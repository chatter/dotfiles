" =============================================================================
" Use Vim settings, rather than Vi settings
" This must be first, because it changes other options as a side effect.
" =============================================================================
set nocompatible
set encoding=utf-8

" =============================================================================
" Plug setup
" =============================================================================
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" =============================================================================
" Plugins
" =============================================================================
call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'                 " Fuzzy file, buffer, mru, etc finder.
Plug 'mileszs/ack.vim'                 " Plugin for script 'ack'.
Plug 'scrooloose/nerdtree'            " A tree explorer plugin for Vim.
Plug 'tpope/vim-commentary'           " Comment stuff out.
Plug 'tpope/vim-sensible'             " Defaults everyone can agree on.
Plug 'tpope/vim-surround'             " Quoting/parenthesizing made simple.
Plug 'vim-airline/vim-airline'         " Status/tabline for Vim.
Plug 'vim-airline/vim-airline-themes' " Themes for vim-airline
Plug 'w0rp/ale'                       " ALE: Asynchronous Lint Engine.
call plug#end()


" =============================================================================
" Setup: Ctrl-P
" =============================================================================
set wildignore+=*/tmp/*,*.so,*.swp,*.zip       " General Files
set wildignore+=*/node_modules/*,*/elm-stuff/* " JavaScript Based Files
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*      " Version Control Files

" =============================================================================
" Setup: Ack
" =============================================================================
if executable("ag")
  let g:ackprg = 'ag --vimgrep'
endif

" =============================================================================
" Setup: NERDTree
" =============================================================================
autocmd StdinReadPre * let s:std_in = 1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif 

" =============================================================================
" Setup: vim-airline
" =============================================================================
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
set background=light              " For solarized-light background

" =============================================================================
" General: Tab/Space war settings
" =============================================================================
set tabstop=2    " show existing tab with 2 spaces identation
set shiftwidth=1 " when indenting with '>', use 2 spaces width
set expandtab    " on pressing tab, insert

" =============================================================================
" Generic Keybindings
" =============================================================================
let mapleader = ','

imap jk <ESC>
nmap <Leader>nt :NERDTree<CR>
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

set splitbelow
set splitright

" =============================================================================
" Yank to system clipboard support
" =============================================================================
if has("clipboard")
  set clipboard=unnamed
  if has("unnamedplus")
    set clipboard=unnamedplus
  endif
endif


" =============================================================================
" General: Generic Settings
" =============================================================================
set colorcolumn=132 " make column 132 visible
