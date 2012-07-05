syntax enable
set expandtab
set nu
set ts=4
set sw=4
set autoindent
set cindent

au BufNewFile,BufRead *.cls set filetype=tex

autocmd bufnewfile * silent! 0r ~/headers/header.%:e

autocmd FileType cpp,c :map <F5> :make %<<CR>
autocmd FileType cpp,c :map <F6> :!./%< < test.in <CR>
autocmd FileType cpp,c :map <F7> :!./%< < test.in > test.out <CR>

autocmd FileType java :set errorformat=%Z%f:%l:\ %m,%A%p^,%-G%*[^sl]%.%#
autocmd FileType java :set makeprg=javac\ %\ 2>&1\ \\\|\ ~/headers/vim-javac-filter
"in ~/headers/vim-javac-filter remember chmod +x
"#!/bin/sed -f
"s/\t/ /g;/:[0-9]\+:/{h;d};/^[ \t]*\^/G;
autocmd FileType java :map <F5> :make<CR>
autocmd FileType java :map <F6> :!java %< < ~/workspace/test.in <CR>
autocmd FileType java :map <F7> :!java %< < ~/workspace/test.in > ~/workspace/test.out <CR>

autocmd FileType tex :map <F5> :!xelatex %<CR>

map <c-a> ggVG
map <c-c> "+y
map <c-v> "+p
