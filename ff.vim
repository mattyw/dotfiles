" A very experimental attempt at a file finer, really just for personal use
" FindFile "foo.vim"

function! s:FindFile(name)
    let l:file = system("find ./ -iname ".a:name." | head -1")
    execute "normal :e ".l:file
endfunction

command! -nargs=1 FF call s:FindFile(<f-args>)
