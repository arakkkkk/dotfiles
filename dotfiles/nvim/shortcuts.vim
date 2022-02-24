" cursole movement
noremap <S-h>   ^
noremap <S-j>   }
noremap <S-k>   {
noremap <S-l>   $
noremap <C-j>   5j
noremap <C-k>   5k
noremap <C-e>  $
noremap <C-a>  ^
noremap <Space>j jzz
noremap <Space>k kzz
map! <C-e>  <C-c>$a
map! <C-a>  <C-c>^i


" tab control
noremap <silent>tr :vsplit<CR>
noremap <silent>tu  :split<CR><C-w><C-w>
noremap <silent>ta :tabnew<CR>
noremap <C-l> gt
noremap <C-h> gT


" bracket
noremap <silent>:" diwi""<Esc>P
noremap <silent>:' diwi''<Esc>P
noremap <silent>:[ diwi[]<Esc>P
noremap <silent>:( diwi()<Esc>P
noremap <silent>:{ diwi{}<Esc>P
noremap <silent>:< diwi<><Esc>P


noremap <silent>:v<CR> :w<CR>:! osascript -e 'tell application "Vivaldi" to reload active tab of window 1'<CR><CR>

" others
noremap <silent>R *:%s//



function SetTabIndent()
  set shiftwidth=2
  echo expand("%:p")
  if len(split(expand("%:p"), '\.')) == 0
    return
  endif
  let ext = split(expand("%:p"), '\.')[-1]
  if ext == "py"
    set shiftwidth=4
  elseif ext == "md"
    set shiftwidth=4
  elseif ext == "json"
    set shiftwidth=4
  endif
endfunction

" noremap <silent>:e<CR> :source ~/.config/nvim/plugins/ale.vim<CR>:source ~/.config/nvim/init.vim<CR>:source ~/.config/nvim/init.vim<CR>:call SetTabIndent()<CR>:w<CR>:edit<CR>:echo "reload success"<CR>
noremap <silent>:e<CR> :source ~/.config/nvim/plugins/ale.vim<CR>:source ~/.config/nvim/init.vim<CR>:source ~/.config/nvim/shortcuts.vim<CR>:w<CR>:edit<CR>:call SetTabIndent()<CR>


noremap <silent>:recache<CR> :call dein#recache_runtimepath()
" noremap <silent>:oq<CR> :only | close!

" init
noremap <silent>:sc<CR> :tabnew<CR>:source ~/.config/nvim/shortcuts.vim<CR>
