let $PATH = "~/.pyenv/shims:".$PATH

set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
set tabstop=4          "タブを何文字の空白に変換するか
set shiftwidth=4       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする



if &compatible
  set nocompatible
endif
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})
  call dein#end()
  call dein#save_state()
endif
if dein#check_install()
 call dein#install()
endif
filetype plugin indent on
syntax enable


let g:python_host_prog = '/Users/Kouiti/.pyenv/shims/python'
let g:python3_host_prog = '/Users/Kouiti/.pyenv/shims/python'
let g:coc_node_path = '/usr/local/bin/node'



noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
noremap <C-j>   5j
noremap <C-k>   5k

noremap <C-e>  $
noremap <C-a>  ^
map! <C-e>  <C-c>$a
map! <C-a>  <C-c>^i

noremap <silent>tr :vsplit<CR>
noremap <silent>tu  :split<CR><C-w><C-w>
noremap <silent>ta :tabnew<CR>
noremap <C-l> gt
noremap <C-h> gT


syntax enable
" source ~/.config/nvim/colors/func.vim
" colorscheme iceberg
" colorscheme solarized
colorscheme night-owl
source ~/.config/nvim/colors/colorscheme.vim
