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
noremap <silent>:{ diwi{}<Esc>P
noremap <silent>:< diwi<><Esc>P


noremap <silent>:oq<CR> :only | close!
noremap <silent>:v<CR> :! sh ~/dotfiles/dotfiles/shellscripts/reloadVivaldi.sh<CR><CR>


map :sc<CR> :tabnew<CR>:source ~/.config/nvim/shortcuts.vim<CR>gT
