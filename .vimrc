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

autocmd FileType java :set errorformat=%Z%f:%l:\ %m,%A%p^,%-G%*[^sl]%.%#
autocmd FileType java :set makeprg=javac\ %\ 2>&1\ \\\|\ vim-javac-filter
"in /bin/vim-javac-filter (remember chmod)
"#!/bin/sed -f
"s/\t/ /g;/:[0-9]\+:/{h;d};/^[ \t]*\^/G;
autocmd FileType java :map <F5> :make<CR>
autocmd FileType java :map <F6> :!java %<<CR>
autocmd FileType java :map <F7> iimport java.util.*;<CR>import java.math.*;<CR>import java.io.*;<CR><CR>public class Main implements Runnable {<CR><CR>public static void main(String args[]) {<CR>new Main().run();<CR>}<CR><CR>BufferedReader reader;<CR>StringTokenizer tokenizer;<CR>PrintWriter writer;<CR><CR>private void solve() throws Exception {<CR>try {<CR><CR><CR><CR>} catch(NullPointerException e) {return;}<CR>}<CR><CR>public void run() {<CR>try {<CR><CR>FileInputStream fin = new FileInputStream("test.in");<CR>//PrintStream fout = new PrintStream("test.out");<CR>System.setIn(fin); //System.setOut(fout);<CR><CR>reader = new BufferedReader(new InputStreamReader(System.in));<CR>tokenizer = null;<CR>writer = new PrintWriter(System.out);<CR>solve();<CR>reader.close(); writer.close();<CR><CR>} catch (Exception e) {<CR>e.printStackTrace();<CR>System.exit(1);<CR>}<CR>}<CR><CR>int nextInt() throws Exception {<CR>return Integer.parseInt(nextToken());<CR>}<CR><CR>long nextLong() throws Exception {<CR>return Long.parseLong(nextToken());<CR>}<CR><CR>double nextDouble() throws Exception {<CR>return Double.parseDouble(nextToken());<CR>}<CR><CR>String nextToken() throws Exception {<CR>while (tokenizer == null \|\| !tokenizer.hasMoreTokens()) {<CR>tokenizer = new StringTokenizer(reader.readLine());<CR>}<CR>return tokenizer.nextToken();<CR>}<CR><CR>}<CR><ESC>:18<ESC>

autocmd FileType tex :map <F5> :!xelatex %<CR>

map <c-a> ggVG
map <c-c> "+y
map <c-v> "+p
