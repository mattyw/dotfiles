set guifont=Mono\ 12
set number
syntax on

"powerline
"set rtp+=~/powerline/powerline/bindings/vim

filetype on
filetype plugin indent on
au Bufenter *.scala setfiletype scala
au Bufenter *.go set filetype=go
au BufWritePost *.go !gofmt -w %
au BufWritePost *.py !pep8 --ignore=E123 %

au Bufenter *.go setlocal makeprg=/usr/local/go/bin/go\ build\ %
au Bufenter *.go map <F5> :!go run % <CR>
au Bufenter *.py setlocal makeprg=python\ %
au Bufenter *.clj map <F5> :!clojure %<CR>
au Bufenter *.py map <F5> :!python %<CR>
au Bufenter *.c map <F5> :!gcc %<CR>
au Bufenter *.clj syn keyword lispFunc defrel fact
set expandtab
set tabstop=4
set shiftwidth=4
set smarttab
set smartindent
set nowrap
set path +=$PWD/**
set suffixesadd+=.go
"map <F5> :!python %<CR>
"map <F5> :!clojure1.2 %<CR>
colorscheme koehler
"Searching
set ignorecase
set smartcase
set incsearch
set colorcolumn=80
"set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)

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

"Might need to do :cw after this one
noremap <Leader>ff :vimgrep/<>/j ./**/*.py

noremap <Leader>n :NERDTreeToggle<CR>
noremap <Leader>r :!ctags -R<CR>
noremap <Leader>gr :!gotags $(find ./ -name "*.go") > tags <CR>
noremap <Leader>tb :TagbarToggle<CR>
noremap <Leader>c :0r~/canonical_copyright.txt <CR>
