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
function SplitWindow()
  write
  split
  winc j
endfunction
function RunCurrentFile()
  if len(split(expand("%:p"), '\.')) == 0
    return
  endif
  let ext = split(expand("%:p"), '\.')[1]
  let file = split(expand("%:p"), '\.')[0]
  if ext == "py"
    call SplitWindow()
    term python %
  elseif ext == "rs"
    call SplitWindow()
    term cargo run
  elseif ext == "go"
    call SplitWindow()
    term go run %
  elseif ext == "md"
    PreviewMarkdown bottom
  else
    echo "fiailed."
  endif
endfunction


nnoremap :r<CR> :call RunCurrentFile()<CR>
nnoremap :g<CR> :w<CR>:split<CR><C-w><C-w> :term sh ~/dotfiles/dotfiles/nvim/run.sh %<CR>
