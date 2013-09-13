"se o arquivo foi um .cls (class) ou .inc entao, reconheça ele como php
au BufRead,BufNewFile *.cls,*.inc,*.module set filetype=php
highlight CurrentLine term=reverse ctermbg=0 ctermfg=14 gui=none guibg=#ffffcc
"se o tipo do arquivo for php, entao leia esse source de cor doida pra ele
source /root/.vim/colors/darkblue.vim

"para quando rolar um :help ele ler o manual do php
if has("autocmd")
    autocmd BufNewFile,Bufread *.php,*.php3,*.php4 set keywordprg="help"
endif


"vamos ler os dicionarios
helptags /root/.vim/doc

set nu
set cindent
set is hls ic scs  "opções espertas de busca
set sm             "ShowMatch: mostra o início do bloco recém fechado
set wildmode=longest,list  "para completação do TAB igual ao bash
set laststatus=2
set stl=%-m%-r%-y%-f,(linha_%-l_de_%-L_%-P)
syntax on
set ai
set shiftwidth=4
set softtabstop=4
set tabstop=4
set fdm=marker
set wrap
"set termencoding=utf8
"seta folding
" Automatic close char mapping
"inoremap  { {<CR>}<C-O>
"inoremap [ []<LEFT>
"inoremap ( ()<LEFT>
"inoremap " ""<LEFT>
"inoremap ' ''<LEFT>	
" Dictionary completion

" The completion dictionary is provided by Rasmus:  http://lerdorf.com/funclist.txt
if has("autocmd")
	autocmd FileType php  set complete-=k/root/.vim/doc/funclist.txt complete+=k/root/.vim/doc/funclist.txt
endif   "has(autocmd)

" Abreviacoes uteis para sua sanidade mental
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq


" configurações do gvim
set gfn=andale\ mono\ 7
set bs=2

filetype plugin on
filetype indent on

" abreviacoes
abbreviate epre echo "<pre><hr>"; print_r($); echo "</pre><hr>"; die();
abbreviate epres echo "<pre><hr>"; print_r($_SESSION); echo "</pre><hr>"; die();
abbreviate eprep echo "<pre><hr>"; print_r($_POST); echo "</pre><hr>"; die();
abbreviate epreg echo "<pre><hr>"; print_r($_GET); echo "</pre><hr>"; die();
abbreviate eprer echo "<pre><hr>"; print_r($res); echo "</pre><hr>"; die();
abbreviate ds die($sql);

map <F8> ggVGg? 
map <F10> "vyiw:new<CR>:execute "r!lynx --dump http://br.php.net/manual/en/function.".@v.".php"<CR><ESC>:set nonu<CR>:1<CR>
map <F2> :%s/\r//g<CR>
map <F4> :q!<CR>
imap <F4> <ESC>:q!<CR>
"map <F5> :DBExecVisualSQL<CR>

map <Tab> <C-x><C-i>
imap <Tab> <C-x><C-i>

nnoremap <silent> <C-t> :CommandT<CR>
nnoremap <silent> <C-b> :CommandTBuffer<CR>


"autocmd VimEnter * nested NERDTree
au BufRead,BufNewFile *.tpl,*.html set filetype=smarty

au Filetype smarty exec('set dictionary=/root/.vim/syntax/smarty.vim')
au Filetype smarty set complete+=k
"map <S-Space><S-Space> <C-X><C-K> 
":set completeopt=longest,preview

"let g:dbext_default_profile_SISCONWEB = 'type=ora:user=sisconmds_inter/sisconmds_inter@MDS:port=1521:host=10.68.12.251'

" para ser usando com o bufpos
set hidden
set laststatus=2
let g:buftabs_in_statusline=1

"java
"if has("autocmd")
	"autocmd Filetype java setlocal omnifunc=javacomplete#Complete
"endif 


" para usar o WinManager
:map <c-w><c-t> :WMToggle<cr>

"set cursorline
"hi CursorLine ctermbg=blue cterm=none
