syntax on
set nu
set ts=4
set sw=4
set autoindent
set expandtab

filetype off
filetype plugin indent on

au BufNewFile,BufRead *.cls set filetype=tex
au BufNewFile,BufRead *.st set filetype=html

autocmd FileType cpp,c :map <F9> :make %<<CR>
autocmd FileType cpp,c :map <F8> :!./%< < %<.in<CR>
autocmd FileType cpp,c :map <F7> :!./%< <CR>

autocmd FileType java :compiler javac
autocmd FileType java :map <F9> :make %<CR>
autocmd FileType java :map <F8> :!java %< < %<.in<CR>

autocmd FileType python :map <F8> :!python % <CR>

autocmd FileType tex :map <F9> :!xelatex %<CR>

