" Colors/Highlighting
syntax on
colorscheme elflord

" General Editor Settings
set number "Line Numbers
" set cursorline "highlight current line - Doesn't work well in pure vim
set smartcase "Ignore case until mix case is used in the pattern
set clipboard=unnamed " Alias anonymous register as * (system clipboard)

" Spacing
set tabstop=4
set shiftwidth=4
set shiftround
set expandtab
set smarttab

" Whitespace
set list listchars=tab:»·,trail:·,nbsp:·,eol:¬

" Right-side gutter 
" set textwidth=80
" set colorcolumn=+1

" Splitting
set splitbelow
set splitright

" Searching
set incsearch " incremental search

" Lang-specific Settings

" Git Config
autocmd Filetype gitcommit setlocal spell textwidth=72
