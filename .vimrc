set nu
set cindent
set is hls ic scs
set showmatch
set laststatus=2
set stl=%-m%-r%-y%-f,(linha_%-l_de_%-L_%-P)
set ai
set shiftwidth=2
set softtabstop=2
set tabstop=2
set fdm=marker
set wrap
set bs=2
set hidden
set laststatus=2
set noshowmode
set nocompatible
set cursorline
hi CursorLine cterm=NONE ctermbg=237 ctermfg=NONE
syntax on
filetype off

" Abreviacoes uteis para sua sanidade mental
cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq

map <F8> ggVGg? 
map <F10> "vyiw:new<CR>:execute "r!lynx --dump http://br.php.net/manual/en/function.".@v.".php"<CR><ESC>:set nonu<CR>:1<CR>
map <F2> :%s/\r//g<CR>
map <F4> :q!<CR>
imap <F4> <ESC>:q!<CR>

map <Tab> <C-x><C-i>
imap <Tab> <C-x><C-i>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" plugins pessoais
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'itchyny/lightline.vim'
Plugin 'ervandew/supertab'
call vundle#end()            " required
filetype plugin indent on    " required

"Plugins configs
" Syntstic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:SuperTabDefaultCompletionType = "<c-n>"

let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'

set numberwidth=5
