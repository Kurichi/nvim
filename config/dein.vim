"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/kurichi/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/kurichi/.cache/dein')
  " XOG base directory compartible
  let g:dein#cache_directory = $HOME . '/cache/dein'
  
  call dein#begin('/home/kurichi/.cache/dein/')

  " Let dein manage dein


  " Let dein manage dein
  " Required:
  call dein#add('/home/kurichi/.cache/dein//repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  
  " tomlファイルを利用するための設定
  " 導入するプラグインを記載したtomlファイルのパスを記載する
  let s:toml_dir = $HOME . '/.config/nvim/dein'
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'
  
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()

  runtime ~/.config/nvim/config/ddc.vim

endif

" autocmd VimEnter * NERDTree

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
