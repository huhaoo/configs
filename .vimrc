set whichwrap+=h,l,b,s,<,>,[,]
set nocp
set number
set nocompatible
syntax on
set showmode
set showcmd
set mouse=a
set encoding=utf-8 
set t_Co=256
filetype indent on
set autoindent
set tabstop=4
set shiftwidth=4
set relativenumber
set cursorline
set wrap   
set linebreak
set wrapmargin=2
set scrolloff=5
set sidescrolloff=15
set laststatus=2
set ruler
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set nobackup
set noswapfile
set undofile
set backupdir=~/.vim/.backup//  
set directory=~/.vim/.swp//
set undodir=~/.vim/.undo// 
set autochdir
set noerrorbells
set history=1000
set autoread
set wildmenu
set wildmode=longest:list,full

func Compile()
	exec "w!"
	if &filetype == "cpp"
		exec "!g++ % -o %< -O2 -std=c++11 -Wall"
	endif
endfunc

func Run()
	exec "w!"
	if &filetype == "cpp"
		exec "!./%<"
	endif
	if &filetype == "html" 
		exec "!google-chrome %:p"
	endif
	if &filetype == "markdown"
		exec "!google-chrome %:p"
	endif
	if &filetype == "python"
		exec "!python %"
	endif
endfunc

func Rmexe()
	exec "! rm %<"
endfunc
map <F9> :call Compile()<CR>
imap <F9> <Esc><F9>

map <C-F9> :call Run() <CR>
imap <C-F9> <Esc><C-F9>

map <C-S-F9> :call Rmexe() <CR>
imap <C-S-F9> <Esc><C-S-F9>

map <C-c> "+y
imap <C-c> <Esc>"+y

map <C-x> "+d
imap <C-x> <Esc>"+d

map <C-v> "+p
imap <C-v> <Esc>"+p

map <C-z> u
imap <C-z> <Esc>u

map <C-y> <C-r>
imap <C-y> <Esc><C-r>

map <C-s> :w!<CR>
imap <C-s> <Esc><C-s>

func Cppinit() 
	call setline(1,          "/***************************************************************")   
	call append(line("."),   "	File name: ".expand("%:t"))   
	call append(line(".")+1, "	Author: huhao")  
	call append(line(".")+2, "	Create time: ".strftime("%c"))   
	call append(line(".")+3, "***************************************************************/")
	call append(line(".")+4, "#include<stdio.h>")
	call append(line(".")+5, "#include<string.h>")
	call append(line(".")+6, "#include<math.h>")
	call append(line(".")+7, "#include<algorithm>")
	call append(line(".")+8, "using namespace std;")
	call append(line(".")+9, "#define fr(i,a,b) for(int i=(a),end_##i=(b);i<=end_##i;i++)")
	call append(line(".")+10,"#define fd(i,a,b) for(int i=(a),end_##i=(b);i>=end_##i;i--)")
	call append(line(".")+11,"int read()") 
	call append(line(".")+12,"{") 
	call append(line(".")+13,"	int r=0,t=1,c=getchar();") 
	call append(line(".")+14,"	while(c<'0'||c>'9')")
	call append(line(".")+15,"	{")
	call append(line(".")+16,"		t=c=='-'?-1:1;")
	call append(line(".")+17,"		c=getchar();")
	call append(line(".")+18,"	}")
	call append(line(".")+19,"	while(c>='0'&&c<='9')")
	call append(line(".")+20,"	{")
	call append(line(".")+21,"		r=r*10+c-48;")
	call append(line(".")+22,"		c=getchar();")
	call append(line(".")+23,"	}")
	call append(line(".")+24,"	return r*t;")
	call append(line(".")+25,"}")
	call append(line(".")+26,"int main()")
	call append(line(".")+27,"{")
	call append(line(".")+28,"	return 0;")
	call append(line(".")+29,"}")
endfunc

function CurDir()
	let curdir = substitute(getcwd(), $HOME, "~", "g")
	return curdir
endfunc
set statusline=[%n]\ %f%m%r%h\ \|\ \ pwd:\ %{CurDir()}\ \ %=\ Line:%l/%L\(%3p%%)\ ,\ Column:%c\ 
map <F8> :call Cppinit()<CR>
imap <F8> <esc><F8>
map <C-d> :color morning<CR>
imap <C-d> <Esc><C-d>
map <C-p> :color default<CR>
imap <C-p> <Esc><C-p>
map <C-a> ggvG<End>
imap <C-a> <Esc><C-a><End>
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'wakatime/vim-wakatime'
call vundle#end()            " required
filetype plugin indent on    " required
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" begin vim markdown setting
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_no_default_key_mappings = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_math = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_auto_insert_bullets = 0
" end
