let g:neoterm_autoscroll=1
let g:neoterm_default_mod='belowright'
let g:neoterm_size=30
command! -nargs=* T split | wincmd j | resize 20 | terminal <args>

" open and close neoterm
nnoremap <c-t> <C-c>:Ttoggle<CR><C-w><C-w><C-c>
:tnoremap <c-t> <C-\><C-n>:Ttoggle<CR>

" swich window
noremap <C-w> <C-w><C-w>
:tnoremap <C-w> <C-\><C-n><C-w><C-w>

" swich insert and normal mode
:tnoremap <C-c> <C-\><C-n>
noremap <C-q> a<C-c>
:tnoremap <C-q> <C-c>

" run python file
nnoremap :r<CR> :w<CR>:split<CR><C-w><C-w> :term python %<CR>
