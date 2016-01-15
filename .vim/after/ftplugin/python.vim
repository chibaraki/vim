if exists('b:did_ftplugin_python')
    finish
endif
let b:did_ftplugin_python = 1

if has('vim_starting')
set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#begin(expand('~/.vim/bundle'))
NeoBundle 'hynek/vim-python-pep8-indent'
NeoBundle 'jmcantrell/vim-virtualenv'
NeoBundle 'andviro/flake8-vim'
NeoBundle 'davidhalter/jedi-vim'
call neobundle#end()

setlocal smarttab
setlocal expandtab
setlocal tabstop=4
setlocal shiftwidth=4
setlocal foldmethod=indent
setlocal commentstring=#%s

xmap <buffer> af <Plug>(textobj-python-function-a)
omap <buffer> af <Plug>(textobj-python-function-a)
xmap <buffer> if <Plug>(textobj-python-function-i)
omap <buffer> if <Plug>(textobj-python-function-i)
xmap <buffer> ac <Plug>(textobj-python-class-a)
omap <buffer> ac <Plug>(textobj-python-class-a)
xmap <buffer> ic <Plug>(textobj-python-class-i)
omap <buffer> ic <Plug>(textobj-python-class-i)

setlocal omnifunc=jedi#completions
