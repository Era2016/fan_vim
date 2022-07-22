" Configuration file for vim
set modelines=0        " CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible    " Use Vim defaults instead of 100% vi compatibility
"filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" python folding frendly
Plugin 'tmhedberg/SimpylFold'

Plugin 'Valloric/YouCompleteMe'

" show the hints
Plugin 'preservim/tagbar'

" browse complex directory hierarchies
Plugin 'preservim/nerdtree'

" Install Vim-go
Plugin 'fatih/vim-go'

" statusline 
Plugin 'vim-airline/vim-airline'

" syntax checking
Plugin 'scrooloose/syntastic'

" file/buffer/mru finder for vim 
"Plugin 'ctrlpvim/ctrlp.vim'

" colorscheme
Plugin 'yuttie/hydrangea-vim'

" colorscheme
Plugin 'arzg/vim-colors-xcode'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
" All of your Plugins must be added before the following line
call vundle#end()            " required

" General {
    filetype plugin indent on    " required
    if has("syntax")
        syntax on
    endif

    "set backspace=2        " more powerful backspacing

    " Enable 256 colors palette in Gnome Terminal
    if $COLORTERM == 'gnome-terminal'
        set t_Co=256
    endif

    set background=dark
    "colorscheme darkblue
    "colorscheme delek
    "colorscheme hydrangea
    "colorscheme xcodedark
    colorscheme xcodewwdc 

    " Don't write backup file if vim is being called by "crontab -e"
    au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
    " Don't write backup file if vim is being called by "chpass"
    au BufWrite /private/etc/pw.* set nowritebackup nobackup

    " 让配置变更立即生效
    autocmd BufWritePost $MYVIMRC source $MYVIMRC

    if has('clipboard')
        if has('unnamedplus')  " When possible use + register for copy-paste
            set clipboard=unnamed,unnamedplus
        else         " On mac and Windows, use * register for copy-paste
            set clipboard=unnamed
        endif
    endif

    "set mouse=a

    " 打开上次位置
    au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
    set termencoding=utf-8
    set encoding=utf-8
    "scriptencoding utf-8

    set tags=tags;
    set autochdir

    " With a map leader it's possible to do extra key combinations
    " like <leader>w saves the current file
    let mapleader = ","

    " Fast saving
    "nmap <leader>w :w!<cr>

    " :W sudo saves the file
    " (useful for handling the permission-denied error)
    "command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
" }

" Vim UI {
    "set tabpagemax=15               " Only show 15 tabs
    set showmode                    " Display the current mode
    
    "set cursorline

    "set cursorcolumn
    "highlight clear SignColumn      " SignColumn should match background
    "highlight clear LineNr          " Current line number row will have same background color in relative mode

    "if has('cmdline_info')
    "    set ruler                   " Show the ruler
    "    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
    "    set showcmd                 " Show partial commands in status line and
    "                                " Selected characters/lines in visual mode
    "endif

    "if has('statusline')
    "    set laststatus=2

    "    " Broken down into easily includeable segments
    "    set statusline=%<%f\                     " Filename
    "    set statusline+=%w%h%m%r                 " Options
    "    "if !exists('g:override_spf13_bundles')
    "    "    set statusline+=%{fugitive#statusline()} " Git Hotness
    "    "endif
    "    set statusline+=\ [%{&ff}/%Y]            " Filetype
    "    set statusline+=\ [%{getcwd()}]          " Current dir
    "    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    "endif

    "filetype on
    "filetype indent on

    set backspace=indent,eol,start  " Backspace for dummies
    "set linespace=0                 " No extra spaces between rows
    set number                      " Line numbers on
    set relativenumber             "
    set showmatch                   " Show matching brackets/parenthesis
    set incsearch                   " Find as you type search
    set hlsearch                    " Highlight search terms
    "set winminheight=0              " Windows can be 0 line high
    "set ignorecase                  " Case insensitive search
    set smartcase                   " Case sensitive when uc present
    "set wildmenu                    " Show list instead of just completing
    "set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
    set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
    set scrolljump=5                " Lines to scroll when cursor leaves screen
    set scrolloff=3                 " Minimum lines to keep above and below cursor
    "set foldenable                  " Auto fold code
    set nofoldenable                 " 禁用代码折叠
    set so=3                         " Set 7 lines to the cursor - when moving vertically using j/k
    "set list
    "set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace
    set cmdheight=1                  " Height of the command bar
    "set foldcolumn=1                 " Add a bit extra margin to the left
" }

" Formatting {
    set autoindent      " Indent at the same level of the previous line
    set shiftwidth=4    " Use indents of 4 spaces
    set expandtab       " Tabs are spaces, not tabs
    set smarttab        " Be smart when using tabs
    set tabstop=4       " An indentation every four columns
    "set smartindent
" }

" Key (re)Mappings {
    nnoremap <C-J> <C-W><C-J>
    nnoremap <C-K> <C-W><C-K>
    nnoremap <C-L> <C-W><C-L>
    nnoremap <C-H> <C-W><C-H>

    " Disable highlight when <leader><cr> is pressed
    map <silent> <leader><cr> :noh<cr>

    " Smart way to move between windows
    "map <C-j> <C-W>j
    "map <C-k> <C-W>k
    "map <C-h> <C-W>h
    "map <C-l> <C-W>l

    " Close the current buffer
    map <leader>bd :Bclose<cr>:tabclose<cr>gT

    " Close all the buffers
    map <leader>ba :bufdo bd<cr>

    map <leader>l :bnext<cr>
    map <leader>h :bprevious<cr>

    " Useful mappings for managing tabs
    map <leader>tn :tabnew<cr>
    map <leader>to :tabonly<cr>
    map <leader>tc :tabclose<cr>
    map <leader>tm :tabmove
    map <leader>t<leader> :tabnext

    " Let 'tl' toggle between this and the last accessed tab
    let g:lasttab = 1
    nmap <Leader>tl :exe "tabn ".g:lasttab<CR>
    au TabLeave * let g:lasttab = tabpagenr()

    " Opens a new tab with the current buffer's path
    " Super useful when editing files in the same directory
    map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/

    " Switch CWD to the directory of the open buffer
    map <leader>cd :cd %:p:h<cr>:pwd<cr>

    "" Specify the behavior when switching between buffers
    "try
    "  set switchbuf=useopen,usetab,newtab
    "  set stal=2
    "catch
    "endtry

    " Return to last edit position when opening files (You want this!)
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

    nmap <F5> :NERDTreeToggle<cr>
    nmap <F8> :TagbarToggle<CR>
" }

" Plugins {
    " GoLang {
        filetype plugin on
        let g:go_disable_autoinstall = 0

        let g:go_highlight_methods = 1
        let g:go_highlight_structs = 1
        let g:go_highlight_operators = 1
        let g:go_highlight_build_constraints = 1
        " vim-go跳转
        let g:go_def_mode='godef'  " 有时候 gopls 有问题可以用 godef 跳转，默认用 gopls

        "let g:go_fmt_command = "goimports"
        "let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
        "let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }
        "au FileType go nmap <Leader>s <Plug>(go-implements)
        "au FileType go nmap <Leader>i <Plug>(go-info)
        "au FileType go nmap <Leader>e <Plug>(go-rename)
        "au FileType go nmap <leader>r <Plug>(go-run)
        "au FileType go nmap <leader>b <Plug>(go-build)
        "au FileType go nmap <leader>t <Plug>(go-test)
        "au FileType go nmap <Leader>gd <Plug>(go-doc)
        "au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)
        "au FileType go nmap <leader>co <Plug>(go-coverage)
    " }

     " NerdTree {
        " Start NERDTree when Vim starts with a directory argument.
        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
                    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

        " Exit Vim if NERDTree is the only window remaining in the only tab.
        autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

        " If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
        autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
                    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif
     " }

     " YouCompleteMe {
        " ycm 忽略头文件找不到错误
        let g:ycm_show_diagnostics_ui = 0

        let g:ycm_collect_identifiers_from_tags_files = 1

        let g:syntastic_cpp_compiler = 'clang++'
        let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

        " use the Homebrew llvm's clangd
        "let g:ycm_clangd_binary_path = trim(system('brew --prefix llvm')).'/bin/clangd'

        let g:ycm_autoclose_preview_window_after_completion=1
        let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'

        " Disable the neosnippet preview candidate window
        " When enabled, there can be too much visual noise
        " especially when splits are used.
        set completeopt-=preview
     " }
     " syntastic {
     
        "let g:syntastic_cpp_compiler = 'clang++'
        "let g:syntastic_cpp_compiler_options = ' -std=c++11 -stdlib=libc++'

        "set statusline+=%#warningmsg#
        "set statusline+=%{SyntasticStatuslineFlag()}
        ""set statusline+=%*

        "let g:syntastic_always_populate_loc_list = 1
        "let g:syntastic_auto_loc_list = 1
        "let g:syntastic_check_on_open = 1
        "let g:syntastic_check_on_wq = 0

        "" 检查头文件位置
        ""let g:syntastic_c_config_file = '.syntastic_c_config'
        ""let g:syntastic_cpp_config_file = '.syntastic_c_config'

     " }
" }
