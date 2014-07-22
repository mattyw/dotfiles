" Calls the command shell and puts the output in the current buffer
function! s:Run(name)
    execute ":r !".a:name
endfunction

command! -nargs=1 RN call s:Run(<f-args>)
command! -nargs=0 RW call s:Run(<cword>)
command! -nargs=0 RL call s:Run(getline("."))
