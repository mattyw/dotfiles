set guifont=Mono\ 12
set number
syntax off
execute pathogen#infect()

filetype on
filetype plugin indent on
au Bufenter *.scala setfiletype scala
au Bufenter *.go set filetype=go
au BufWritePost *.go !gofmt -w %
au BufWritePost *.rs !rustfmt --write-mode=overwrite %
au BufWritePost *.py !pep8 --ignore=E123 %
"au Winenter * execute "winheight(winr

function! s:IncreaseSize()
    let l:current_window = winnr()
    let l:width = winwidth(l:current_window)
    execute "normal 2\<C-W>>"
    execute "normal 2\<C-W>+"
endfunction

function! s:DecreaseSize()
    let l:current_window = winnr()
    let l:width = winwidth(l:current_window)
    execute "normal 2\<C-W><"
    execute "normal 2\<C-W>-"
endfunction

"au Winenter * call s:IncreaseSize()
"au Winleave * call s:DecreaseSize()

"python << endpython
"import vim, subprocess, time, threading
"def updateStatusLine():
"    while True:
"        diff = subprocess.call(["bzr", "diff", ">", "/dev/null"])
"        vim.command('set statusline=%d' % diff)
"        time.sleep(1)
"#threading.Thread(target=updateStatusLine).start()
"endpython


set laststatus=2
"set statusline=%{GetBzrDiff()}
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

"powerline
"set rtp+=~/powerline/powerline/bindings/vim


au Bufenter *.go setlocal makeprg=go\ build\ ./...
au Bufenter *.go map <F5> :!go run % <CR>
au Bufenter *.py setlocal makeprg=python\ %
au Bufenter *.clj map <F5> :!time clojure %<CR>
au Bufenter *.py map <F5> :!python3 %<CR>
au Bufenter *.c map <F5> :!gcc %<CR>
au Bufenter *.exs map <F5> :!time elixir %<CR>
au Bufenter *.clj syn keyword lispFunc defrel fact
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set nowrap
set path +=./**,**
set path +=~/canonical/omnibus-dev/src/**
set suffixesadd+=.go
"map <F5> :!python %<CR>
"map <F5> :!clojure1.2 %<CR>
colorscheme koehler
"set background=dark
"colorscheme solarized
"Searching
set ignorecase
set smartcase
set incsearch
set colorcolumn=80
set hidden

"How I boosted my vim http://nvie.com/posts/how-i-boosted-my-vim/
set copyindent
"set showmatch
"set hlsearch
set nohlsearch
set title

cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"No motions
noremap <up> <Nop>
noremap <down> <Nop>
noremap <left> <Nop>
noremap <right> <Nop>
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>
map <Leader>, :bprevious<CR>
map <Leader>. :bnext<CR>
nmap <F7> i
imap <F7> <Esc>l
nnoremap H ^
nnoremap L $
noremap <Leader>va :VCSAdd<CR>
noremap <Leader>vc :VCSCommit<CR>
let maplocalleader = ","

"Might need to do :cw after this one
noremap <Leader>ff :vimgrep/<>/j ./**/*.py

noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>r :!ctags -R<CR>
noremap <Leader>gr :!gotags $(find ./ -name "*.go") > tags <CR>
noremap <Leader>tb :TagbarToggle<CR>
noremap <Leader>c :0r~/canonical_copyright.txt <CR>
"For clojure firplace goodness
noremap <Leader>ce :Eval<CR>
noremap <Leader>e :Eval<CR>
noremap <LocalLeader>e :Eval<CR>
noremap <Leader>p :CtrlP<CR>
noremap <Leader>s [sz=
