" .vimrc v2
" Need a header
" TODO steal formatting from https://github.com/timss/vimconf/blob/master/.vimrc

""
"" TOC?
""


""
"" 000. Vundle Setup
""

set nocompatible              " be iMproved, required
filetype off                  " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'mhinz/vim-startify'
Plugin 'mhinz/vim-signify'
"Plugin 'plasticboy/vim-markdown'
"Plugin 'reedes/vim-thematic'
"Plugin 'reedes/vim-pencil'
"Plugin 'bling/vim-airline'
"Plugin 'Valloric/MatchTagAlways'
"Plugin 'kien/ctrlp.vim'

" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'

" Plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




""
"" 010. autocmd (meaning what exactly?)
""

" Force markdown, not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Preview markdown files with Chrome. Uses 'Markdown Preview' extension, with
" _Allow access to file URLs_ option checked.
autocmd BufEnter *.md exe 'noremap <F5> :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %:p<CR>'

