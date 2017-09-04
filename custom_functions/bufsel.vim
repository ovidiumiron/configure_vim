function! SelectBuffer(pattern)
    " Switch the buffer by name
    let bufcount = bufnr("$")
    let currbufnr = 1
    let nummatches = 0
    let firstmatchingbufnr = 0
    while currbufnr <= bufcount
        if(bufexists(currbufnr))
        let currbufname = bufname(currbufnr)
        if(match(currbufname, a:pattern) > -1)
            echo currbufnr . ": ". bufname(currbufnr)
            let nummatches += 1
            let firstmatchingbufnr = currbufnr
        endif
        endif
        let currbufnr = currbufnr + 1
    endwhile
    if(nummatches == 1)
        execute ":buffer ". firstmatchingbufnr
    elseif(nummatches > 1)
        let desiredbufnr = input("Enter buffer number: ")
        if(strlen(desiredbufnr) != 0)
        execute ":buffer ". desiredbufnr
        endif
    else
        echo "No matching buffers"
    endif
endfunction


command! -nargs=1 Bs :call SelectBuffer("<args>") " bind the SelectBuffer() 
                                                  " function to a user-command
