"" $HOME/.vim/vimrc

"" be VIMproved (req. for Vundle)
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Vundle config
filetype off                 " required

"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()          " required
"" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

"" Keep Plugin commands between vundle#begin/end.

"" GIT plugin: https://github.com/tpope/vim-fugitive
Plugin 'tpope/vim-fugitive'

"" Code commenting: https://github.com/scrooloose/nerdcommenter
Plugin 'scrooloose/nerdcommenter'

"" snippet engine: https://github.com/SirVer/ultisnips
Plugin 'SirVer/ultisnips'
"" Settings: triggerr configuration. !!! don't let this clash with YouCompleteMe
let g:UltiSnipsExpandTrigger="<TAB>"
let g:UltiSnipsJumpForwardTrigger="<TAB>"
let g:UltiSnipsJumpBackwardTrigger="<S-TAB>"
"" ultisnips user defined snippets are here: $HOME/.vim/UltiSnips/

"" preload some snippets: https://github.com/honza/vim-snippets
Plugin 'honza/vim-snippets'

"" Latex-Plugin
"Plugin 'LaTeX-Box-Team/LaTeX-Box'

"" autocomplete engine: https://github.com/Valloric/YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
"" Settings: trigger configuration
let g:ycm_key_list_select_completion = ['<C-N>']
let g:ycm_key_list_previous_completion = ['<C-P>']

" plugin for org-mode: (hyper)link handling
Plugin 'vim-scripts/utl.vim'
" Utl.vim
if has("mac")
    let g:utl_cfg_hdl_scm_http_system = "silent !open '%u'"
end

" plugin for org-mode: time/date handling
Plugin 'tpope/vim-speeddating'

"" org-mode
Plugin 'jceb/vim-orgmode'


"" latex plugin: https://github.com/parasite/vimlatexmacros
Plugin 'parasite/vimlatexmacros'

"" easy motion like cVim
Plugin 'easymotion/vim-easymotion'
let g:EasyMotion_use_upper = 1
" let g:EasyMotion_smartcase = 1

" ctrl-p search files
Plugin 'kien/ctrlp.vim'

" nerdtree
Plugin 'scrooloose/nerdtree'
let NERDTreeIgnore=['\.pyc$', '\~$', '\.o'] "ignore files in NERDTree

"" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" viminfo
set viminfo+=n$HOME/.vim/cache/viminfo
"" Spellcheck
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
"" syntax highlighting
syntax on
"" search highlighting
set nohls

set noerrorbells
set autoindent
"set backup
set ruler
set showcmd
set modeline
set number
set cursorline

set foldmethod=syntax
set foldlevelstart=99
"set foldlevel=0
set nofoldenable

set scrolloff=5
set mouse=a

"" Enable 256 colours
set t_Co=256
"" text width
set tw=0 " no linebreaks while codeing. for text files set to 95 per ftplugin
"" fix backspace: behave normally
set backspace=2


"" tabs'n'stuff
"" convert tabs to spaces
set expandtab
"" set tab = number of spaces
"set tabstop=4
"" set autoindent tabstop
" config for indentation mixed hard tabs/spaces
" http://vim.wikia.com/wiki/Indenting_source_code
set shiftwidth=4
set softtabstop=4
"" smart tabstops
set smarttab


"" Set listchars and enable list mode by default. (see :dig for other digraphs)
set lcs=tab:»·,trail:·
set list

"" show a list of completion matches, complete to longest common string
set wildmode=list:longest,full
"" Don't autocomplete certain filetypes
set wildignore=*.o,*.obj,*.bak,*.exe


"" When closing a bracket ('}',']',')') shortly jump to the matching one
"set showmatch

"" Show buffer number, filetype, fileformat and fileencoding in statusline
"" POWERLINE needs this
set laststatus=2
set statusline=[%n]\ [%f]\ %w%y%r%m[%{&fileformat}][%{&fileencoding}]\ %=\ %l/%L,%-5c\ %P\ 

"" Autocommands
"" Always jump to the line the cursor was on when the file was closed last time
au BufReadPost * if line("'\"") | exe "normal '\"" | endif

let mapleader = ","
nmap <silent> <Leader>l :set list!<CR>
nmap <silent> <Leader>m :w<CR>:make<CR>:redraw!<CR>:cw<CR>
nmap <silent> <Leader>e :.cc<CR>

nmap <silent> <Leader>n :NERDTreeToggle<CR>

" TAB toggle fold
nmap <silent> <TAB> za

" easymotion
nmap s <Plug>(easymotion-s)

" org-mode
nmap <leader>x <Plug>OrgCheckBoxToggle

"" Unbind the cursor keys in insert, normal and visual modes to unlearn them
for prefix in ['i', 'n', 'v']
    for key in ['<Up>', '<Down>', '<Left>', '<Right>']
        exe prefix . "noremap " . key . " <Nop>"
            endfor
            endfor

colorscheme badwolf

"set showtabline=2
"nmap <F5> :tabprevious<CR>
"nmap <F6> :tabnext<CR>
"nmap <F7> :tabnew<CR>
"nmap <F8> <ESC>:tabclose<CR>

" TeX stuff
let g:tex_flavor='latex'
"let g:tex_fold_enabled=1

"" vim latex suite stuff
"let g:Tex_TreatMacViewerAsUNIX = 1
"let g:Tex_ExecuteUNIXViewerInForeground = 1
"let g:Tex_ViewRule_pdf = 'open -a Skim'
"let g:Tex_MultipleCompileFormats = 'pdf'
"let g:Tex_SmartKeyDot = 0 " no \cdots in mathmode just \dots

"" item 8 and 9 added to suppress buggy llncs
"let g:Tex_IgnoredWarnings =
    "\'Underfull'."\n".
    "\'Overfull'."\n".
    "\'specifier changed to'."\n".
    "\'You have requested'."\n".
    "\'Missing number, treated as zero.'."\n".
    "\'There were undefined references'."\n".
    "\'Citation %.%# undefined'."\n".
    "\'destination with the same identifier'."\n".
    "\'Label(s) may have changed. Rerun to get cross-references right'."\n".
    "\'Font shape'."\n".
    "\'Size substitutions with differences'

"let g:Tex_IgnoreLevel = 11 " default: 7 (8, 9 to suppress buggy llncs) (10, 11 suppress Font shape warnings)
"let g:Tex_DefaultTargetFormat = 'pdf'
"let g:Tex_UseMakefile = 1
"let g:Tex_GotoError = 0 " 0: don't jump to quickfix window, 1: jump curser to first error in quickfix window
"let g:Tex_CompileRule_pdf = 'latexmk -pdf -interaction=nonstopmode -file-line-error -synctex=1 $*'

"autocmd BufRead,BufNewFile *.tex set iskeyword+=:

"" vim powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
