"hardwired in syntax/tex.vim
"setl isk+=: " ctrl-n for search in \label{fig:<search> !!!! GOES TO ~/.vim/ftplugin/tex.vim
" doesn't work either
set sw=2 " indentation !!!! GOES TO ~/.vim/ftplugin/tex.vim
let g:tex_isk='48-57,a-z,A-Z,192-255,:'
let g:ycm_semantic_triggers={
            \ 'tex' : ['\ref{', '\autoref{', '\cite{'],
            \ }
