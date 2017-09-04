function! Xclip(register_name)
    " Copy the register with name register_name to xclip
    execute "call system('xclip -selection primary', @".a:register_name.")"
endfunction

"Bind the Xclip() function to a user-command
command! -nargs=1 Xclip :call Xclip("<args>")
