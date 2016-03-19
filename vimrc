set encoding=utf-8

syntax enable
set background=dark

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set nu

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

" emmet for vim
Plugin 'mattn/emmet-vim'

" tabular for aligning shit
" Plugin 'godlygeek/tabular'

" css3 syntax to extend css.vim
Plugin 'hail2u/vim-css3-syntax'

" syntax checker for everything (if you have the checker installed)
Plugin 'scrooloose/syntastic'

" markdown plugin
Plugin 'plasticboy/vim-markdown'

" html5 syntax highlighting + other attributes (ARIA, Microdata)
Plugin 'othree/html5.vim'

" for indent guides to see how many indent levels there are
Plugin 'Yggdroot/indentLine'

" Plugin for color highlighting
Plugin 'chrisbra/Colorizer'

" For Sass, Haml, and SCSS
Plugin 'tpope/vim-haml'

" For yaml syntax support
Plugin 'ingydotnet/yaml-vim'

" For better javascript
Plugin 'jelera/vim-javascript-syntax'

" for sublime like autocompete brackets and parentheses
" Plugin 'jiangmiao/auto-pairs'

" for LaTeX
Plugin 'xuhdev/vim-latex-live-preview'

" for sublime like file tree on the left
Plugin 'scrooloose/nerdtree'

" for sublime like comment toggles
Plugin 'tomtom/tcomment_vim'

" airline for vim
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" GitGutter
Plugin 'airblade/vim-gitgutter'

" fugitive for Git
Plugin 'tpope/vim-fugitive'

" for jade syntax highlighting
Plugin 'digitaltoad/vim-jade'

" COlor schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'nanotech/jellybeans.vim'

call vundle#end()
filetype plugin indent on

colorscheme jellybeans
let g:jellybeans_use_lowcolor_black = 1

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
