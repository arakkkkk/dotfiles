let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ }

" 各ツールをFixerとして登録
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['autopep8', 'black', 'isort'],
    \ 'json': ['fixjson', 'jq'],
    \ 'javascript': ['prettier'],
    \ 'html': ['HTMLint'],
    \ 'htmldjango': ['html-beautify'],
    \ 'css': ['prettier'],
    \ 'Dockerfile': ['dockerfile_lint', 'hadolint'],
    \ }

map :fix<CR> :ALEFix<CR>

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
let g:ale_linters_explicit = 1

" npm install jsonlint -g
