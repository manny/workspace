"basic settings"
"=============================================================================="
"vundle stuff
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
"source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim

"always show status line
set laststatus=2

"use 256 colors
set t_CO=256


"let vundle manage vundle
Plugin 'Lokaltog/vim-powerline.git'
Plugin 'gmarik/vundle'
Plugin 'derekwyatt/vim-scala'
Plugin 'flazz/vim-colorschemes'
Plugin 'yegappan/mru'
Plugin 'scrooloose/nerdtree'
call vundle#end()

"for nerdtree
map <C-n> :NERDTreeToggle<CR>

filetype plugin indent on

set nocompatible "fixes old vi bugs"
syntax on
set backspace=2 "Makes backspace work"
set history=500 "Sets undo history size"
set ruler "Sets up status bar"
set number "Turns on line numbering"
set t_Co=256 "Sets Vim to use 256 colors"
colorscheme jellybeans
"set background=dark

set term=xterm-256color
set encoding=utf-8
set termencoding=utf-8

set cursorline
set cursorcolumn

"unhighlight
nnoremap <silent> <C-l> :nohl<CR><C-l>


"Indentation settings"
"=============================================================================="
set tabstop=4 "Sets display width of tabs"
set softtabstop=4
set shiftwidth=4 "Sets indentation width"
set autoindent "Turns on auto-indenting"
set smartindent "Remembers previous indent when creating new lines"
"
"Choose between tabs and spaces for indentation by uncommenting one of
"these two. Expand for spaces, noexpand for tabs:"
"set noexpandtab
set expandtab
set smarttab "Smarter indentation management regardless of tabs/spaces"


"Search settings"
"=============================================================================="
set hlsearch "Highlights search terms"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"


"Key mappings"
"=============================================================================="
"Use jj instead of escape in insert mode"
inoremap jj <Esc>`^
"Turn on plugin & indentation for specific filetypes"
filetype plugin indent on

fun! FuckTrailingWhitespace()
        autocmd BufWritePre <buffer> :%s/\s\+$//e
endfun

"set javascript preferences
autocmd FileType javascript
    \ set expandtab |
    \ set shiftwidth=2 |
    \ set softtabstop=2 |
    \ call FuckTrailingWhitespace() |
    \ let g:syntastic_javascript_checkers=['']
" set python preferences
autocmd FileType python
    \ set shiftwidth=4 | 
    \ set softtabstop=4 |
    \ set smarttab |
    \ set expandtab |
    \ call FuckTrailingWhitespace() |
    \ let g:syntastic_python_checkers = ['pyflakes']
" set clojure preferences
autocmd FileType clojure
    \ call FuckTrailingWhitespace()
" set puppet preferences
autocmd FileType puppet
    \ set expandtab |
    \ set shiftwidth=2 |
    \ set softtabstop=2 |
    \ call FuckTrailingWhitespace()
