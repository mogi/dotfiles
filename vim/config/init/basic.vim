filetype on            " enables filetype detection
filetype plugin on     " enables filetype specific plugins
filetype plugin indent on
syntax enable
 
" 文字コードの設定
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
 
" vimの機能設定
set nobackup                     " 自動バックアップファイルを作成しない
set noswapfile                   " スワップファイルを作成しない
set autoread                     " 他で書き換えられたら自動で読み直す
set smartindent                  " use annoying indent
set textwidth=0                  " 一行に長い文章を書いていても自動折り返しをしない
set clipboard+=unnamed           " OSのクリップボードを使用する
set backspace=indent,eol,start   " バックスペースを有効にする
set grepprg=ag\ -a               "agの設定"
set complete+=k                  "追加した辞書ファイルを有効にする
set tw=0                         "自動改行off"
set noexpandtab
set tags+=tags
 
" ファイルを切り替える際、自動でhide
:set hidden
 
"ファイラをツリー形式にする"
let g:netrw_liststyle=3

" Ev/Rvでvimrcの編集と反映
command! Ev edit ~/dotfiles/vimfiles/userautoload/
command! Rv source $MYVIMRC

" 貼付け時に自動でpasteモードにする
" http://qiita.com/ringo/items/bb9cf61a3ccfe6183c7b
if &term =~ "xterm"
    let &t_ti .= "\e[?2004h"
    let &t_te .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    noremap <special> <expr> <Esc>[200~ XTermPasteBegin("0i")
    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")
    cnoremap <special> <Esc>[200~ <nop>
    cnoremap <special> <Esc>[201~ <nop>
endif
