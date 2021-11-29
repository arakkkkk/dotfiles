let g:ale_linters = {
    \ 'javascript': ['eslint'],
    \ }

" 各ツールをFixerとして登録
let g:ale_fixers = {
    \ '*': ['remove_trailing_lines', 'trim_whitespace'],
    \ 'python': ['autopep8', 'black', 'isort'],
    \ 'json': ['fixjson', 'jq'],
    \ 'javascript': ['prettier'],
    \ 'html': ['html-beautify'],
    \ 'htmldjango': ['html-beautify'],
    \ 'css': ['prettier', 'stylelint'],
    \ 'Dockerfile': ['dockerfile_lint', 'hadolint'],
    \ 'go': ['gofmt']
    \ }

map :fix<CR> :ALEFix<CR>
map :ale<CR> :source ~/.config/nvim/plugins/ale.vim<CR>

let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0
let g:ale_linters_explicit = 1

" npm install jsonlint -g
