syntax on
set nu
set ts=4
set sw=4
set autoindent
set expandtab

if $TERM  =~ 'linux'
    set t_Co=0
else
    set t_Co=256
    colorscheme mrkn256
endif

filetype plugin indent on

au BufNewFile,BufRead *.cls set filetype=tex
map <F12> ggVG"+y

autocmd FileType cpp :set makeprg=g++\ %\ -Wall\ -o\ %<
autocmd FileType cpp :map <F9> :make<CR>
autocmd FileType cpp :map <F8> :!./%< < %<.in<CR>
autocmd FileType cpp :map <F7> :!./%< <CR>

autocmd FileType java :set makeprg=javac\ %
autocmd FileType java :map <F9> :make<CR>
autocmd FileType java :map <F8> :!java %< < %<.in<CR>
autocmd FileType java :map <F7> :!java %< <CR>

autocmd FileType tex :map <F9> :!xelatex %<CR>

