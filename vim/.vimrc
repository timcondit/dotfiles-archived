" ------------------------------------ "
" File:         .vimrc (v2)
" Author:       Tim Condit
" Source:       <github>
" ------------------------------------ "

" Strategy: Prioritize tasks. Do one thing at a time. Make sure it works in
" all scenarios where it's needed. Then -and only then- move on to the next
" thing.

" Tactical 1: Manual Vundle setup
" Justification: need a plugin manager; need git and a decent color scheme for
"       working with .vimrc
" 1. Bare minimum plugin set: 
"       Plugin 'tpope/vim-fugitive'
"       Plugin 'altercation/vim-colors-solarized'

" Tactical 2: Migrate or jettison existing .vimrc content
" Justification: <why should I do this?>
" 1. 
" 2. 
" 3. 

" Tactical 3: Python plugins and configuration
" Justification: First choice language
" 1. 
" 2. 
" 3. 

" Tactical n: <name>
" Justification: <why should I do this?>
" 1. 
" 2. 
" 3. 

" Tactical n: <name>
" Justification: <why should I do this?>
" 1. 
" 2. 
" 3. 

" Tactical n: <name>
" Justification: <why should I do this?>
" 1. 
" 2. 
" 3. 

" Tactical n: Automatic Vundle setup
" Justification: setup should be simple, comfortable and controllable; setup
"   should also fail gracefully (in event of proxy issues or whatever)
" References:
"   https://github.com/timss/vimconf/blob/master/.vimrc
"   http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/ {{{
" 1. Automatic setup on Windows boxes (Windows 7, Windows 8, Server 2008)
" 2. Automatic setup on Linux boxes
" 3. When starting Vim on a machine without Vundle, give user the option to
"   install it. Don't just go off and make changes.
" 4. When installing, explain what's happening and how to undo it if
"   necessary.


set nocompatible    " this vimrc is not vi-compatible

""" Vundle plugin manager {{{
    """ Automatically setting up Vundle, taken from
    """ http://www.erikzaadi.com/2012/03/19/auto-installing-vundle-from-your-vimrc/ {{{
"        let has_vundle=1
"        if !filereadable("~/.vim/bundle/Vundle.vim/README.md")
"            echo "Installing Vundle..."
"            echo ""
"            silent !mkdir -p ~/.vim/bundle
"            silent !git clone https://github.com/gmarik/Vundle.vim ~/.vim/bundle/Vundle.vim
"            let has_vundle=0
"        endif
    """ }}}

    """ Initialize Vundle {{{
        filetype off                                " required to init
        set rtp+=~/.vim/bundle/Vundle.vim           " include vundle
        call vundle#begin()                         " init vundle
    """ }}}

    " Keep Plugin commands between vundle#begin/end

    """ Let Vundle manage Vundle, required {{{
        Plugin 'gmarik/Vundle.vim'

        """ Local plugins (and only plugins in this file!) {{{{
"            if filereadable($HOME."/.vimrc.plugins")
"                source $HOME/.vimrc.plugins
"            endif
        """ }}}

        " Git wrapper inside Vim
        Plugin 'tpope/vim-fugitive'

        " A very nice colorscheme
        Plugin 'altercation/vim-colors-solarized'

        " Handle surround chars like ''
        Plugin 'tpope/vim-surround'

        """ Later {{{
            "Plugin 'scrooloose/nerdtree'
            "Plugin 'scrooloose/nerdcommenter'
            "Plugin 'mhinz/vim-startify'
            "Plugin 'mhinz/vim-signify'

            " Awesome syntax checker
            " REQUIREMENTS: See :h syntastic-intro
            "Plugin 'scrooloose/syntastic'

            " syntastic
            " Plugin 'scrooloose/syntastic'
            "
            " Syntax checkers - required.
            " This is going to be a lot of work. Add in priority order. Save for
            " later.
            "
            " [priority] language
            " [3] AsciiDoc
            " [3] C#
            " [3] Chef
            " [2] HTML
            " [2] Java
            " [3] JavaScript
            " [3] JSON
            " [2] Markdown
            " [1] Powershell?
            " [1] Python
            " Plugin 'nvie/vim-flake8'
            " [3] Racket
            " [2] Ruby
            " [2] sh
            " [3] XML
            " [3] YAML
        """ }}}

    " Finish Vundle stuff
    " All of your Plugins must be added before the following line
    call vundle#end()

    """ Later {{{
    """ Installing plugins the first time, quits when done {{{
    "        if has_vundle == 0
    "            :silent! PluginInstall
    "            :qa
    "        endif
    """ }}}

    """ }}}
""" }}}



""" Local leading config, only use for prerequisites as it will be
""" overwritten by anything below {{{{
"    if filereadable($HOME."/.vimrc.first")
"        source $HOME/.vimrc.first
"    endif
""" }}}

""" User interface {{{
    """ Syntax highlighting {{{
        filetype plugin indent on                   " detect file plugin+indent
        syntax on                                   " syntax highlighting
        set background=light
        colors solarized                            " select colorscheme
        au BufNewFile,BufRead *.txt se ft=sh tw=78  " opens .txt w/highlight
        au BufNewFile,BufRead *.tex se ft=tex tw=78 " we don't want plaintex
        au BufNewFile,BufRead *.md se ft=markdown tw=78 " markdown, not modula




""
"" 010. autocmd (meaning what exactly?)
""

" Force markdown, not Modula-2
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Preview markdown files with Chrome. Uses 'Markdown Preview' extension, with
" _Allow access to file URLs_ option checked.
autocmd BufEnter *.md exe 'noremap <F5> :!start "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" %:p<CR>'

