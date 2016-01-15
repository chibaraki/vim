filetype off
if exists("b:did_ftplugin_html")
	finish
endif

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))
NeoBundle 'mattn/emmet-vim'
NeoBundle 'taichouchou2/html5.vim'
call neobundle#end()
let b:did_ftplugin_html=1
let g:user_emmet_leader_key='<C-e>'
let g:user_emmet_settings = {
    \'variables' : {
    \  'lang' : "ja"
    \},
    \'indentation' : '  '
    \}

filetype plugin indent on
