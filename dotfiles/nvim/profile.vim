function! ProfileCursorMove() abort
  let profile_file = expand('~/dotfiles/dotfiles/nvim/log/vim-profile.log')
  if filereadable(profile_file)
    call delete(profile_file)
  endif

  normal! gg
  normal! zR

  execute 'profile start ' . profile_file
  profile func *
  profile file *

  augroup ProfileCursorMove
    autocmd!
    autocmd CursorHold <buffer> profile pause | q
  augroup END

  for i in range(100)
    call feedkeys('j')
  endfor
endfunction


" nvim +'call ProfileCursorMove()' ~/dotfiles/dotfiles/karabiner/karabiner.json
