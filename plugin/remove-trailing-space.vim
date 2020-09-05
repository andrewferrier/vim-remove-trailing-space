command! -range=% -bar RemoveTrailingSpace call remove_trailing_space#RemoveTrailingSpace(<line1>, <line2>)

nnoremap <silent> dx :set opfunc=remove_trailing_space#RemoveTrailingSpaceMotion<CR>g@
nnoremap <silent> dX :RemoveTrailingSpace<CR>
xnoremap <silent> dx :'<,'>RemoveTrailingSpace<CR>
