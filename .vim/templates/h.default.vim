function! AddFileNameAndDate()
    let l:lnum = 1
    let l:now = " * @date " . strftime("%F %T")
    let l:file = " * @file " . expand("%:t")
    while l:lnum <= line("$")
        let l:line = getline(l:lnum)
        if l:line =~ ' * @date'
            call setline(l:lnum, l:now)
        endif
        if l:line =~ ' * @file'
            call setline(l:lnum, l:file)
        endif
        let l:lnum = l:lnum + 1
    endwhile
    call cursor(15, 1)
endfunction
call AddFileNameAndDate()
