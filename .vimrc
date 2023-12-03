syntax enable

set nobackup
set noswapfile
set showmatch
set laststatus=2
set ignorecase
set smartcase
set hlsearch

nnoremap <space>q <cmd>wq<cr>
nnoremap L <cmd>bn<cr>
nnoremap H <cmd>bp<cr>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l



"""""""""""""""""""""""""
" For session start
function! RestoreSession()
  execute 'source ~/.vim_session'
endfunction

function! SaveSession()
  execute 'mksession! ~/.vim_session'
endfunction

if argc() == 0
  call RestoreSession()
endif

autocmd VimLeave * call SaveSession()
" For session end
"""""""""""""""""""""""""


"""""""""""""""""""""""""
" File module
" :vimgrep {word} **
nnoremap <space>fg <cmd>vimgrep<space><space>**<left><left><left><left>
autocmd QuickFixCmdPost *grep* cwindow
" For session end
"""""""""""""""""""""""""


"""""""""""""""""""""""""
" tree
let g:netrw_liststyle = 3
nnoremap <space>e <cmd>Vexplore<cr>
"""""""""""""""""""""""""

set clipboard+=unnamed

