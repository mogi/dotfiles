" 直前に操作した文字を選択
noremap gc `[v`]
 
" ウィンドウの折り返し文字が長いときの移動
noremap j gj
noremap k gk
noremap gj j
noremap gk k
 
" タグジャンプ
map t g]
 
" ファイル操作のマップ
nmap <Space>b :ls<CR>:buffer 
nmap <Space>v :vsplit<CR><C-w><C-w>:ls<CR>:buffer
nmap <Space>V :Vexplore!<CR><CR>
nmap <Space>e :edit ./
 
" タグ操作のマップ
"nmap <Space>cr :!ctags -R -f .git/tags<CR>
nmap <Space>cr :!ctags -R<CR>
nmap <Space>t :Tlist<CR>
 
" マップ
nmap <Space>g :vimgrep //j path/to/file/*.py |cw
nmap <Space>d :vertical diffsplit ./
nmap <Space>o :only<CR>
nmap <Space>at :args ./website/mobile/templates/**/
nmap <Space>av :args ./website/mobile/views/
nmap <Space>p o<Space><Esc>iimport pdb; pdb.set_trace()<Esc>:w<CR>
nmap <Space>h :e %:h<CR>
nmap <Space>sr :SyntasticCheck<CR>:Errors<CR>

" git
nmap <Space>gb :Gblame<CR>
nmap <Space>gs :Gstatus<CR>
nmap <Space>gd :Gdiff<CR>
