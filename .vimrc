syntax on
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set number
set autoindent

if !has('nvim')
    runtime! defaults.vim
    let g:skip_defaults_vim = 1
endif
set mouse=

if exists('+termguicolors')
    set termguicolors
endif
if !empty(globpath(&runtimepath, 'colors/sorbet.vim'))
    colorscheme sorbet
endif
