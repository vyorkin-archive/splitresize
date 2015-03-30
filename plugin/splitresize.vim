if !exists('g:splitresize_map_keys')
  let g:splitresize_map_keys = 1
endif

if g:splitresize_map_keys
  " move between splits without the ctrl-w prefix
  nn <silent><C-J> <C-W><C-J>:call Splitresize()<CR>
  nn <silent><C-K> <C-W><C-K>:call Splitresize()<CR>
  nn <silent><C-L> <C-W><C-L>:call Splitresize()<CR>
  nn <silent><C-H> <C-W><C-H>:call Splitresize()<CR>
endif

" Resize the current split to at least (90,25) but no more than (140,60)
" or 2/3 of the available space otherwise.

function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), 90])
    let vmax = max([winheight(0), float2nr(&lines*0.66), 25])
    exe "vertical resize" . (min([hmax, 140]))
    exe "resize" . (min([vmax, 60]))
endfunction
