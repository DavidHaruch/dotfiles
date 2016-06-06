set encoding=utf-8

syntax enable

set tabstop=4
set expandtab
set shiftwidth=4
set smarttab
set nu
set cursorline

set noshowmode

set t_Co=256

set laststatus=2


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
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'junegunn/fzf.vim'

" syntax plugins
Plugin 'PotatoesMaster/i3-vim-syntax'
" the one syntax plugin to rule them all!
Plugin 'sheerun/vim-polyglot'
" Polyglot's javascript syntax sucks
Plugin 'jelera/vim-javascript-syntax'

" COlor schemes
Plugin 'nanotech/jellybeans.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()
filetype plugin indent on

set background=dark
let g:gruvbox_contrast_dark="hard"
let g:gruvbox_contrast_light="light"
let g:gruvbox_invert_signs=0
let g:gruvbox_sign_column="bg0"
let g:gruvbox_vert_split="bg0"
let g:gruvbox_invert_indent_guides=1
let g:gruvbox_invert_selection=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 0

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

set noshowmode

let g:vim_markdown_frontmatter = 1

" let g:indentLine_char = '│'
" let g:indentLine_char = '|'
" let g:indentLine_color_term=239
" let g:indentLine_showFirstIndentLevel=1
" let g:indentLine_conceallevel=0

let g:tex_conceal = ""

let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set incsearch
set hlsearch
set smartcase

" spelling settings USA USA USA!!!
set spelllang=en_us

" set 5 lines padding above and below the cursor even when scrolling
set scrolloff=5
" set the vertical split character to the same one as tmux
set fillchars+=vert:│

" for the vim-markdown plugin
let g:vim_markdown_conceal = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_math = 1

let g:syntastic_disabled_filetypes=['html', 'sass']

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "passive_filetypes": ["css","sass","json","html"] }

" I REALLY hate conceal and don't want it EVER
let g:indentLine_conceallevel=0
set conceallevel=0
setl conceallevel=0
autocmd FileType * setlocal conceallevel=0

" general ease of use bindings
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>/ :noh<CR>

let mapleader = "\<Space>"

set rtp+=~/.fzf
let g:fzf_buffers_jump = 1

" binds for fzf
nnoremap <Tab>f :Files<CR>
nnoremap <Tab>vf :vs<CR><C-W><C-L>:Files<CR>
nnoremap <Tab>b :Buffers<CR>
nnoremap <Tab>l :Lines<CR>

autocmd FileType html,css,sass,scss,jade,pug EmmetInstall
let g:user_emmet_expandabbr_key = '<C-y>'

let g:polyglot_disabled = ['javascript']

" binds for folding easier
set foldmethod=indent
set foldminlines=2
set foldnestmax=3
hi Folded ctermbg=none
nnoremap <Tab><leader> za

colorscheme gruvbox
