" git blame
function! GitBlame(up_down)
    execute "!git blame ". expand('%:p'). " -L ". (line(".") - a:up_down). ",". (line(".") + a:up_down)
endfunction    

command! -nargs=1 Gitblame :call GitBlame("<args>")
