let g:ale_linters = {
    \ }

" 各ツールをFixerとして登録
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['autopep8', 'black', 'isort'],
    \ 'json': ['fixjson', 'jq'],
    \ 'javascript': ['prettier'],
    \ 'html': ['HTMLint'],
    \ 'css': ['prettier'],
    \ 'Dockerfile': ['dockerfile_lint', 'hadolint'],
    \ }

map :fix<CR> :ALEFix<CR>

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1
" " 各ツールの実行オプションを変更してPythonパスを固定
" let g:python_host_prog = '/Users/Kouiti/.pyenv/shims/python'
" let g:python3_host_prog = '/Users/Kouiti/.pyenv/shims/python'
" let g:ale_python_flake8_executable = g:python3_host_prog
" let g:ale_python_flake8_options = '-m flake8'
" let g:ale_python_autopep8_executable = g:python3_host_prog
" let g:ale_python_autopep8_options = '-m autopep8'
" let g:ale_python_isort_executable = g:python3_host_prog
" let g:ale_python_isort_options = '-m isort'
" let g:ale_python_black_executable = g:python3_host_prog
" let g:ale_python_black_options = '-m black'
"
"
"
"
" npm install jsonlint -g
