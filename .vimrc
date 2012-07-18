syntax on
filetype on
set nu
set ts=4
set sw=4
set ai
set ci

au BufNewFile,BufRead *.cls set filetype=tex

autocmd bufnewfile * silent! 0r ~/headers/header.%:e

autocmd FileType cpp,c :map <F9> :make %<<CR>
autocmd FileType cpp,c :map <F8> :!./%< < %<.in <CR>

autocmd FileType java :compiler javac
autocmd FileType java :map <F9> :make %<CR>
autocmd FileType java :map <F8> :!java %< < ~/workspace/test.in <CR>

autocmd FileType tex :map <F9> :!xelatex %<CR>

map <c-a> ggVG
map <c-c> "+y
map <c-v> "+p
