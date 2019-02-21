if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  let g:deoplete#enable_at_startup = 1
  call dein#add('zchee/deoplete-go', {'build': 'make'})

  call dein#add('sheerun/vim-polyglot')
  call dein#add('trevordmiller/nova-vim')
  call dein#add('fatih/vim-go')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/defx.nvim')
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

colorscheme nova

source  ~/.config/nvim/init.d/defx.vim
