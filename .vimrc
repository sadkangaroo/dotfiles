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
autocmd FileType cpp,c :map <F6> :!./%< < %<.in <CR>
autocmd FileType cpp,c :map <F7> :!./%< < %<.in > %<.out <CR>

autocmd FileType java :set makeprg=javac\ % errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
autocmd FileType java :map <F5> :make<CR>
autocmd FileType java :map <F6> :!java %< < ~/workspace/%<.in <CR>
autocmd FileType java :map <F7> :!java %< < ~/workspace/%<.in > ~/workspace/%<.out <CR>

autocmd FileType tex :map <F5> :!xelatex %<CR>

map <c-a> ggVG
map <c-c> "+y
map <c-v> "+p
