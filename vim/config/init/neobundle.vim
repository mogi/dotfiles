"---------------------------
"" Start Neobundle Settings.
"---------------------------
"" bundleで管理するディレクトリを指定
set runtimepath+=~/dotfiles/vimfiles/bundle/neobundle.vim
 
" Required:
call neobundle#begin(expand('~/dotfiles/vimfiles/bundle/'))
  
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
   
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'taglist.vim'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'alpaca-tc/alpaca_tags'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'tpope/vim-fugitive'

 
call neobundle#end()
  
" Required:
filetype plugin indent on
 
"未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
 "-------------------------
 " End Neobundle Settings.
 "-------------------------
