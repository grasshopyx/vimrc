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
"Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline'
Plugin 'tpope/vim-commentary'
" also for vim-markdown
Plugin 'godlygeek/tabular' 
Plugin 'plasticboy/vim-markdown'

" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'The-NERD-tree'
Plugin 'Syntastic'
Plugin 'Tagbar'
Plugin 'bufexplorer.zip'
Plugin 'delimitMate.vim'
Plugin 'winmanager'
Plugin 'minibufexplorerpp'

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
set nu!
set history=50 " default = 20, set history? to show" futile, why?

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
colorscheme koehler

" 
nnoremap <f10> :!ctags -R<CR>
nnoremap <f7> :NERDTreeToggle<CR>
nnoremap <f8> :Tagbar<CR>
nnoremap <f9> :make<cr>


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

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" I don't know why the [count]]c doesn't work
nnoremap <silent> co :cw<CR>
nnoremap <silent> [c :cprevious<CR>
nnoremap <silent> ]c :cnext<CR>
nnoremap <silent> [C :cfirst<CR>
nnoremap <silent> ]C :clast<CR>

" for vim-markdown
" Set Initial Foldlevel
let g:vim_markdown_initial_foldlevel=1

" for Powerline
"set laststatus=2
"set t_Co=256
"let g:Powerline_symbols = 'fancy'
"set encoding=utf8
"
"
"powerline{
"set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set laststatus=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}
" for winmanager{
let g:winManagerWindowLayout = "FileExplorer"
let g:winManagerWidth = 30
nmap wm :WMToggle<cr>
let g:AutoOpenWinManager = 1
" }

