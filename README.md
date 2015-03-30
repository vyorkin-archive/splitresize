# splitresize
vim plugin to automatically resize your vim splits as you move between them

## Overview
Idea and implementation is taken from [this article](http://janneinosaka.blogspot.ru/2014/10/automatically-resize-vim-splits.html)

## Installation
Just use anything you like: pathogen, vundle, neobundle, vim-plug, etc

## Configuration
`g:splitresize_map_keys` - enables default key mappings.

Defaults are these:
* `<C-J> <C-W><C-J>`
* `<C-K> <C-W><C-K>`
* `<C-L> <C-W><C-L>`
* `<C-H> <C-W><C-H>`

If you want to change this, you could write something similar to how its actually defined:
```
nnoremap <silent><C-J> <C-W><C-J>:call Splitresize()<CR>
nnoremap <silent><C-K> <C-W><C-K>:call Splitresize()<CR>
nnoremap <silent><C-L> <C-W><C-L>:call Splitresize()<CR>
nnoremap <silent><C-H> <C-W><C-H>:call Splitresize()<CR>
```
