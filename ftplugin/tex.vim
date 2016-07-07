"hardwired in syntax/tex.vim
"setl isk+=: " ctrl-n for search in \label{fig:<search> !!!! GOES TO ~/.vim/ftplugin/tex.vim
" doesn't work either
set tw=95
set sw=2 " indentation !!!! GOES TO ~/.vim/ftplugin/tex.vim
let g:tex_isk='48-57,a-z,A-Z,192-255,:'
"" triggers for semantic completion to kick in
let g:ycm_semantic_triggers={
            \ 'tex' : ['\ref{', '\cref{', '\Cref{', '\autoref{', '\cite{'],
            \ }
"let g:ycm_server_log_level = 'debug'
"" close preview after completion
let g:ycm_autoclose_preview_window_after_completion = 1

" spellcheck
set spelllang=en_gb_oed
set spell
