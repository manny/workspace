"basic settings"
"=============================================================================="
"vundle stuff
filetype off

set rtp+=~/.vim/bundle/vundle
set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

"always show status line
set laststatus=2

"use 256 colors
set t_CO=256

call vundle#rc()

"let vundle manage vundle
Bundle 'gmarik/vundle'
Bundle 'derekwyatt/vim-scala'
Bundle 'flazz/vim-colorschemes'

filetype plugin indent on





set nocompatible "fixes old vi bugs"
syntax on
set backspace=2 "Makes backspace work"
set history=500 "Sets undo history size"
set ruler "Sets up status bar"
set laststatus=2 "Always keeps the status bar active"
set number "Turns on line numbering"
set t_Co=256 "Sets Vim to use 256 colors"
"colorscheme darkburn
"colorscheme lucius
colorscheme synic
set background=dark


set cursorline
set cursorcolumn

"unhighlight
nnoremap <silent> <C-l> :nohl<CR><C-l>


"Indentation settings"
"=============================================================================="
set tabstop=4 "Sets display width of tabs"
set shiftwidth=4 "Sets indentation width"
set autoindent "Turns on auto-indenting"
set smartindent "Remembers previous indent when creating new lines"
"
"Choose between tabs and spaces for indentation by uncommenting one of
"these two. Expand for spaces, noexpand for tabs:"
"set noexpandtab
"set expandtab
"
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
