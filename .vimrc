
syntax on
set background=dark
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set number
set autoindent

runtime! defaults.vim
let g:skip_defaults_vim = 1
set mouse=

hi DiffAdd      ctermfg=darkgrey      ctermbg=LightYellow
hi DiffChange   ctermfg=NONE          ctermbg=NONE
hi DiffDelete   ctermfg=LightBlue     ctermbg=Red
hi DiffText     ctermfg=Yellow        ctermbg=Red
