" MacのときだけPATHを追加
if has("mac")
            let $PATH = '/opt/local/bin:'.$PATH
            endif
 
            " プラグインファイルの置き場所を追加する
            " http://nanasi.jp/articles/howto/config/runtimepath.html
            set runtimepath+=$HOME/.vim/runtime,$HOME/.vim/,$HOME/.vim,$HOME/.vim/runtime/syntax,$HOME/.vim/ftplugin
            " syntaxを追加する
            autocmd BufNewFile,BufRead *.as set filetype=actionscript
            "autocmd BufNewFile,BufRead *.mxml set filetype=mxml
 
            "辞書ファイルの設定
            autocmd FileType actionscript :set dictionary=$VIM/runtime/dict/actionscript.dict
