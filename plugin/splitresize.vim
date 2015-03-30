if !exists('g:splitresize_hmin') | let g:splitresize_hmin = 60
if !exists('g:splitresize_vmin') | let g:splitresize_vmin = 15
if !exists('g:splitresize_hmax') | let g:splitresize_hmax = 80
if !exists('g:splitresize_vmax') | let g:splitresize_vmax = 40

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

function Splitresize()
    let hmax = max([winwidth(0), float2nr(&columns*0.66), g:splitresize_hmin])
    let vmax = max([winheight(0), float2nr(&lines*0.66), g:splitresize_vmin])
    exe "vertical resize" . (min([hmax, g:splitresize_hmax]))
    exe "resize" . (min([vmax, g:splitresize_vmax]))
endfunction
