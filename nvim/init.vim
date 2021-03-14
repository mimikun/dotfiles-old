if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  
  call dein#add('jceb/vim-orgmode')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
  let g:deoplete#enable_at_startup = 1

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

set encoding=utf-8
set tabstop=4
set expandtab

augroup filetypeIndent
	autocmd!
	autocmd BufNewFile,BufRead *.rb setlocal tabstop=2
	autocmd BufNewFile,BufRead Makefile setlocal noexpandtab
augroup END

command! Terminal call popup_create(term_start([&shell], #{ hidden: 1, term_finish: 'close'}), #{ border: [], minwidth: winwidth(0)/2, minheight: &lines/2 })
