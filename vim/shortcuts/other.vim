"Ctrlp to search for files
map <leader>t :CtrlP<CR>

" Hide search highlighting
map <Leader>h :set invhls <CR>

"Switch between last file
map ,, <C-^>

"map over the tcomment command
map <leader>cc :TComment<CR>

"This does tcomment for html
map <leader>ch :TCommentAs html<CR>

" Opens an edit command with the path of the currently edited file filled in
" Normal mode: <Leader>e
map <Leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

"Maps f5 in insert and non insert to indent properly all the code
map   <silent> <F5> mmgg=G'm
imap  <silent> <F5> <Esc> mmgg=G'm

"Git Blame Check
vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

