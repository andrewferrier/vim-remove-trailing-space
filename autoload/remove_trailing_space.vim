function! remove_trailing_space#RemoveTrailingSpace(start_line, end_line) abort
    let l:view = winsaveview()
    exe 'keepjumps ' . a:start_line . ',' . a:end_line . 's/\s\+$//e'
    call winrestview(l:view)
    let l:number_of_lines = a:end_line - a:start_line + 1
    echomsg 'Whitespace removed from ' . l:number_of_lines . ' lines.'
endfunction

function! remove_trailing_space#RemoveTrailingSpaceMotion(mode) abort
    call assert_true(a:mode ==# 'line')
    call remove_trailing_space#RemoveTrailingSpace(line("'["), line("']"))
endfunction
