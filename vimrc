set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
" also for vim-markdown
Plugin 'godlygeek/tabular' 
Plugin 'plasticboy/vim-markdown'
"{ required for viki, sure
Plugin 'tomtom/viki_vim'
Plugin 'tomtom/tlib_vim'
"}
Plugin 'grasshopyx/Capitalize'
" Plugin 'sukima/xmledit'	" it's very strange that xml will complete the
"> automatically when delimitMate.vim installed
" Plugin 'grasshopyx/xmlheader'
Plugin 'jcf/vim-latex'
Plugin 'grasshopyx/macvim-skim'


Plugin 'yonchu/accelerated-smooth-scroll'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'


" Plugin  'klen/python-mode'

" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-lua-ftplugin'
Plugin 'xolox/vim-lua-inspect'

" Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
if has('gui_running')
    Plugin 'Shougo/neocomplete.vim'
endif
Plugin 'Shougo/vimproc'
Plugin 'Shougo/vimshell.vim'

" Plugin 'osyo-manga/vim-marching'
Plugin 'Rip-Rip/clang_complete'

Plugin 'ervandew/supertab'
Plugin 'magic-dot-files/TagHighlight'

Plugin 'kien/ctrlp.vim'
Plugin 'gilligan/vim-lldb'
Plugin 'joonty/vdebug'

" Plugin 'jiangmiao/auto-pairs' " not compatible with clang_complete, so sad
Plugin 'Raimondi/delimitMate'

" Plugin 'tyru/open-browser.vim'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'a.vim'
Plugin 'The-NERD-tree'
Plugin 'Syntastic'
Plugin 'Tagbar'
Plugin 'bufexplorer.zip'
" Plugin 'delimitMate.vim'
Plugin 'winmanager'
Plugin 'minibufexplorerpp'
"{ for viki, not sure
Plugin 'multvals.vim'
Plugin 'genutils'
"Plugin 'VikiDeplate'
"}

" Plugin 'Vim-JDE'

"Plugin 'L9'
" Git plugin not hosted on GitHub
"Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
"Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on
" set nu
set relativenumber
set history=50 " default = 20, set history? to show" futile, why?

" { some languages set these indents
" indent a particular line and want the lines following it to be also indented to the same level
set autoindent
" start a new block of statements and want the next line to be automatically indented to the next level
set smartindent
" }

" In addition to the <Up> and <Down> keys, we can also use the <C-p> and <C-n> chords to go backward and forward through our command history. The advantage of using these mappings is that we don’t need to move our hands from the home row to use them. But there’s a disadvantage to the <C-p> and <C-n> commands: unlike <Up> and <Down>, they don’t filter the command history.
" We can get the best of both by creating the following custom mappings:
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" let vim command-line works like bash
set wildmode=longest,list

" hls = highlight search, is = increse search{
set hls is
" }
"
" for colorscheme{
if has("gui_running")
	colorscheme koehler
else
	colorscheme default
endif
" 
"
highlight Pmenu guifg=white guibg=Brown
highlight PmenuSel guifg=white guibg=DarkBlue


" I don't know why the $PATH does not work. So I add the absolute path.
nnoremap <f10> :!/usr/local/bin/ctags -R<CR>    
nnoremap <f7> :NERDTreeToggle<CR>
nnoremap <f8> :Tagbar<CR>
nnoremap <f9> :make<cr>

" autocmd FileType python nnoremap <Leader>py :!python %<cr>
" <D-...> Mac only
autocmd FileType python nnoremap <D-r> :!python3 %<cr>

" It doesn't work
" autocmd BufWritePost * call system("ctags -R")

" it doesn't work
"nnoremap <c-1> :b1<cr>
"nnoremap <c-2> :b2<cr>
"nnoremap <c-3> :b3<cr>
"nnoremap <c-4> :b4<cr>
"nnoremap <c-5> :b5<cr>
"nnoremap <c-6> :b6<cr>
"nnoremap <c-7> :b7<cr>
"nnoremap <c-8> :b8<cr>
"nnoremap <c-9> :b9<cr>

" Automatically Execute ctags Each Time a File is Saved. It is not so helpful.
" autocmd BufWritePost * call system("ctags -R")

" the space after '=' should be avoided
set guifont=Bitstream\ Vera\ Sans\ Mono:h14
"}
"
" for minibuf{
" c-tab
let g:miniBufExplMapCTabSwitchBufs = 1
" c-hjkl
let g:miniBufExplMapWindowNavVim = 1
" }

" nnoremap <silent> [b :bprevious<CR>
" nnoremap <silent> ]b :bnext<CR>
" nnoremap <silent> [B :bfirst<CR>
" nnoremap <silent> ]B :blast<CR>

" I don't know why the [count]]c doesn't work
" nnoremap <silent> co :cw<CR>
" nnoremap <silent> [c :cprevious<CR>
" nnoremap <silent> ]c :cnext<CR>
" nnoremap <silent> [C :cfirst<CR>
" nnoremap <silent> ]C :clast<CR>

" for vim-markdown
" Set Initial Foldlevel
let g:vim_markdown_initial_foldlevel=1


" Status line
set laststatus=2
set statusline=
set statusline+=%-3.3n\
" buffer number
set statusline+=%f\
" filename
set statusline+=%h%m%r%w " status flags
set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type
set statusline+=%=
" right align remainder
set statusline+=0x%-8B
" character value
set statusline+=%-14(%l,%c%V%)
" line, character
set statusline+=%<%P
" file position

" Show line number, cursor position.
set ruler

" Tabs should be converted to a group of 4 spaces.
" This is the official Python convention 
" (http://www.python.org/dev/peps/pep-0008/) 
" I didn't find a good reason to not use it everywhere.
set shiftwidth=4 
set tabstop=4 
set expandtab 
set smarttab

" for Powerline
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"set encoding=utf8
"
"
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
"set nocompatible
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"}
" for winmanager{
"let g:winManagerWindowLayout = "FileExplorer"
"let g:winManagerWidth = 30
"nmap wm :WMToggle<cr>
"let g:AutoOpenWinManager = 1
" }

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
" I think it fix me a big problem.
let g:tex_flavor='latex'

let g:macvim_skim_app_path='/Applications/Skim.app'

set iskeyword+=:


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"neocomplete.vim{
if has("gui_running")
"
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default' : '',
            \ 'vimshell' : $HOME.'/.vimshell_hist',
            \ 'scheme' : $HOME.'/.gosh_completions'
            \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return neocomplete#close_popup() . "\<CR>"
    " For no inserting <CR> key.
    "return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" For cursor moving in insert mode(Not recommended)
"inoremap <expr><Left>  neocomplete#close_popup() . "\<Left>"
"inoremap <expr><Right> neocomplete#close_popup() . "\<Right>"
"inoremap <expr><Up>    neocomplete#close_popup() . "\<Up>"
"inoremap <expr><Down>  neocomplete#close_popup() . "\<Down>"
" Or set this.
"let g:neocomplete#enable_cursor_hold_i = 1
" Or set this.
"let g:neocomplete#enable_insert_char_pre = 1

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType python setlocal omnifunc=python3complete#Complete
autocmd FileType python setlocal omnifunc=jedi#completions
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'

"neocomplete.vim}
endif

let g:SuperTabDefaultCompletionType = "<c-n>"

"set t_Co=256
"
"
"{ vim-marching
" let g:marching_enable_neocomplete=1

" let g:marching_include_paths = [
" \   "/usr/local/include",
" \   "/Users/lisongyuan/Qt5.4.0/5.4/Src/qtbase/include/QtWidgets"
" \]

" if !exists('g:neocomplete#force_omni_input_patterns')
"     let g:neocomplete#force_omni_input_patterns = {}
" endif

" let g:neocomplete#force_omni_input_patterns.cpp =
"             \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'

" " 処理のタイミングを制御する
" " 短いほうがより早く補完ウィンドウが表示される
" " ただし、marching.vim 以外の処理にも影響するので注意する
" set updatetime=200

" " オムニ補完時に補完ワードを挿入したくない場合
" imap <buffer> <C-x><C-o> <Plug>(marching_start_omni_complete)

" " キャッシュを削除してからオムに補完を行う
" imap <buffer> <C-x><C-x><C-o> <Plug>(marching_force_start_omni_complete)

"}

let mapleader=","
noremap \ ,

runtime macros/matchit.vim


" fix the chinese disorder
set ambiwidth=double
set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,latin-1
if has("win32")
    set fileencoding=chinese
else
    set fileencoding=utf-8
endif

" for opencv
set tags+=~/opencv/modules/tags

" for Qt
set tags+=~/Qt5.4.0/5.4/Src/qtbase/src/widgets/tags

" for cscope {

nmap <c-\>d :cs find d <c-r>=expand("<cword>")<cr><cr>
nmap <c-\>i :cs find i ^<c-r>=expand("<cfile>")<cr>$<cr>
nmap <c-\>f :cs find f <c-r>=expand("<cfile>")<cr><cr>
nmap <c-\>e :cs find e <c-r>=expand("<cword>")<cr><cr>
nmap <c-\>t :cs find t <c-r>=expand("<cword>")<cr><cr>
nmap <c-\>c :cs find c <c-r>=expand("<cword>")<cr><cr>
nmap <c-\>g :cs find g <c-r>=expand("<cword>")<cr><cr>
nmap <c-\>s :cs find s <c-r>=expand("<cword>")<cr><cr>

if has("cscope")

    if filereadable("cscope.out")

        cs add cscope.out

    endif

endif

" for cscope }
"

" indent_guides
let g:indent_guides_enable_on_vim_startup = 1

" 定义快捷键到行首和行尾
" start, end
nmap <Leader>s 0
nmap <Leader>e $

" Disable (toggle to passive mode) the Syntastic Plugin when in tex files
autocmd FileType tex :SyntasticToggleMode

" for vim-jedi actually {
let g:neocomplete#enable_auto_select = 0
let g:jedi#popup_select_first=0
set completeopt=longest,menuone
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_on_dot = 0
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\)\w*'
" }


" { neocomplete clang_complete crash
if !exists('g:neocomplete#force_omni_input_patterns')
    let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_overwrite_completefunc = 1
let g:neocomplete#force_omni_input_patterns.c =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
            \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
            \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp =
            \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'
let g:clang_complete_auto = 0
let g:clang_auto_select = 0
" let g:clang_use_library = 1
let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/'
" }

" { prototype
set conceallevel=2
set concealcursor=vin
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='ultisnips' " clang_complete doesn't work. ultisnips work very well

" Complete options (disable preview scratch window, longest removed to aways show menu)
set completeopt=menu,menuone

" Limit popup menu height
set pumheight=20

" SuperTab completion fall-back 
" let g:SuperTabDefaultCompletionType='<c-x><c-u><c-p>'
" }
