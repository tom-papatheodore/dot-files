" ------------------------------------------------------
" To learn about options `:help <option>`
" ------------------------------------------------------

" Set tab to 4 spaces ----------------------------------
" ------------------------------------------------------
"   To enter actual tab character, while in insert mode,
"   first enter ctrl-v, then hit tab
" ------------------------------------------------------
set tabstop=4
set shiftwidth=4
set expandtab

" Set sytax highlighting for .cu and .x files ----------
au BufNewFile,BufRead *.cu set ft=cuda
autocmd BufNewFile,BufRead *.x set syntax=sh

" Allow pasting text from other windows ----------------
set paste

" Turn on syntax highlighting --------------------------
syntax on

" Detect file type -------------------------------------
filetype on

" Set color scheme -------------------------------------
colorscheme peachpuff

" Remember last position -------------------------------
autocmd BufReadPost *
  \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
  \ |   exe "normal! g`\""
  \ | endif

" Allow backspace on Macs ------------------------------
set backspace=indent,eol,start
