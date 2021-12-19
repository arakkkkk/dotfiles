let $PATH = "~/.pyenv/shims:".$PATH

set number             "行番号を表示
set autoindent         "改行時に自動でインデントする
" set tabstop=4          "タブを何文字の空白に変換するか
" set shiftwidth=4       "自動インデント時に入力する空白の数
set tabstop=2          "タブを何文字の空白に変換するか
set shiftwidth=2       "自動インデント時に入力する空白の数
set expandtab          "タブ入力を空白に変換
set splitright         "画面を縦分割する際に右に開く
set clipboard=unnamed  "yank した文字列をクリップボードにコピー
set hls                "検索した文字をハイライトする

if has("autocmd")
  filetype plugin on
  filetype indent on
  "sw=shiftwidth, sts=softtabstop, ts=tabstop, et=expandtab??
  autocmd FileType c           setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType js          setlocal sw=4 sts=4 ts=4 et
  autocmd FileType zsh         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType python      setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scala       setlocal sw=4 sts=4 ts=4 et
  autocmd FileType json        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType html        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType css         setlocal sw=4 sts=4 ts=4 et
  autocmd FileType scss        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType sass        setlocal sw=4 sts=4 ts=4 et
  autocmd FileType javascriptreact  setlocal sw=2 sts=2 ts=2 et
  autocmd FileType typescriptreact  setlocal sw=2 sts=2 ts=2 et
endif

" undo履歴の永続化
if has('persistent_undo')
  set undodir=~/.config/nvim/undo
  set undofile
endif
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


let g:python_host_prog = '~/.pyenv/shims/python'
let g:python3_host_prog = '~/.pyenv/shims/python'
let g:coc_node_path = '/usr/local/bin/node'



noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
noremap <C-j>   5j
noremap <C-k>   5k
noremap <C-e>  $
noremap <C-a>  ^
noremap zz  10jzz10k
noremap <Space>j jzz
noremap <Space>k kzz
map! <C-e>  <C-c>$a
map! <C-a>  <C-c>^i

noremap <silent>tr :vsplit<CR>
noremap <silent>tu  :split<CR><C-w><C-w>
noremap <silent>ta :tabnew<CR>
noremap <C-l> gt
noremap <C-h> gT

noremap <silent>:" diwi""<Esc>P
noremap <silent>:' diwi''<Esc>P
noremap <silent>:[ diwi[]<Esc>P
noremap <silent>:( diwi()<Esc>P






syntax enable
" source ~/.config/nvim/colors/func.vim
" colorscheme iceberg
" colorscheme solarized
colorscheme night-owl
source ~/.config/nvim/colors/colorscheme.vim


map :init<CR> :source ~/.config/nvim/init.vim<CR>
