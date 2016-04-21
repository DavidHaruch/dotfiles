set encoding=utf-8

syntax enable
set background=dark

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set nu

set conceallevel=0
set cursorline

set noshowmode

set t_Co=256

set laststatus=2

set guifont=Ubuntu\ Mono\ derivative\ Powerline "make sure to escape the spaces in the name properly

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'mattn/emmet-vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/syntastic'
Plugin 'Yggdroot/indentLine'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'scrooloose/nerdtree'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'

Plugin 'octol/vim-cpp-enhanced-highlight'

" COlor schemes
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

colorscheme jellybeans

let g:airline#extensions#tabline#enabled = 1

set noshowmode

highlight Comment cterm=italic

imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

let g:vim_markdown_frontmatter = 1

let g:indentLine_color_term = 237
let g:indentLine_char = '│'

let g:tex_conceal = ""

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set incsearch
set hlsearch

" spelling settings USA USA USA!!!
set spelllang=en_us

" set 5 lines padding above and below the cursor even when scrolling
set scrolloff=5
" set the vertical split character to the same one as tmux
set fillchars+=vert:│
hi VertSplit ctermbg=none ctermfg=237

" for the vim-markdown plugin
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1

let g:syntastic_disabled_filetypes=['html', 'sass']

set conceallevel=0
