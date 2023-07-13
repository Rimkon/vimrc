" управление vim:
" комментирование текста: [v] выделить блок. [gc]. Ракоментировать [gc]
" удаление текста в ( ). [dp] или [cp] 
" сохранить <ctrl +w> или [F2] выход <ctrl +q>
" файловый навигатор <ctrl+b> [p] - открыть файл в новом окне.
" update ctags [F3] компиляция [F5] отладка :w [F6]
" Список функций [F8]
" leader = ','
" ack в консоли ищиет слово в содержимом файлов

let mapleader = ","
let maplocalleader = "'"

source ~/.vim/vimrc/set.vim
source ~/.vim/vimrc/plugin.vim
source ~/.vim/vimrc/map.vim
source ~/.vim/vimrc/autocmd.vim     "
source ~/.vim/vimrc/iabbref.vim     " сопоставление символа - команде
source ~/.vim/vimrc/let.vim
source ~/.vim/vimrc/hardvimbook.vim

"при вводе в командной строке vim откроет vimrc
cabbrev vv e ~/.vimrc

augroup filetype_html
    :autocmd!
    :autocmd FileType html nnoremap <buffer><localleader> f Vatzf
augroup END


" закомментировать или раскоментировать код.
vnoremap gc :s/^/\/\//<CR>:noh<CR>
nnoremap gcl :s/^/\/\//<CR>:noh<CR>
vnoremap gd :s/^\/\///<CR>
nnoremap gdl :s/^\/\///<CR>
