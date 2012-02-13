syntax enable
set nu
set ts=4
set sw=4
set autoindent
set cindent
au BufNewFile,BufRead *.cls set filetype=tex

autocmd FileType cpp :map <F5> :make %<<CR>
autocmd FileType cpp :map <F6> :!./%<<CR>
autocmd FileType cpp :map <F7> i#include<iostream><CR>#include<cstdio><CR>#include<cstdlib><CR>#include<cstring><CR>#include<cmath><CR>#include<string><CR>#include<cctype><CR>#include<algorithm><CR>#include<complex><CR>#include<vector><CR>#include<queue><CR>#include<set><CR>#include<map><CR><CR>using namespace std;<CR><CR>typedef long long LL;<CR><CR><CR><CR>int main() {<CR><CR>freopen("test.in", "r", stdin);<CR>//freopen("test.out", "w", stdout);<CR><CR><CR><CR>return 0;<CR><CR>}<CR><ESC>kkkkkkkkkkkk

autocmd FileType java :map <F5> :!javac %<CR>
autocmd FileType java :map <F6> :!java %<<CR>

autocmd FileType tex :map <F5> :!xelatex %<CR>

map <c-a> ggVG
map <c-c> "+y
map <c-v> "+p
