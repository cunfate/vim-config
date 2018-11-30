set nu
set backspace=indent,eol,start
set fencs=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936,shift-jis 
set fileformat=unix
set colorcolumn=79
set autoindent
set cindent shiftwidth=4
set softtabstop=4
set ts=4
set expandtab
set incsearch
set showmatch
set hlsearch
set showmode
set laststatus=1
set nolist
set noignorecase
"set foldmethod=indent
syntax on
" Flake8 config

" autopep8 config

" autocmd FileType python map <buffer> <F3> :call Autopep8()<CR>

let g:autopep8_ignore="E501,W293"
let g:autopep8_pep8_passes=100
let g:autopep8_max_line_length=128
let g:autopep8_disable_show_diff=1

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0


" autocmd BufWritePost *.py call Flake8()

" Let vim remember the position last modified
au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif
" highlight Comment ctermfg=darkcyan
highlight Comment ctermfg=blue guifg=green

set nocompatible              " be iMproved, required
" filetype off                  " required

let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
" let g:Powerline_symbols_override = {
"         \ 'BRANCH': [0x2213],
"         \ 'LINE': 'L',
"         \ }
"
let g:Powerline_colorscheme = 'solarized256'
"
set laststatus=2
set t_Co=256
let g:Powerline_symbols= "fancy"
" let g:Powerline_dividers_override = ['>>', '>', '<<', '<']
set fillchars+=stl:\ ,stlnc:\

map :silent! NERDTreeToggle
let NERDTreeWinPos="right"
let NERDTreeShowBookmarks=1
" autocmd VimEnter * NERDTree
nnoremap <silent> <F2> :NERDTreeTabsToggle<CR>
nmap <F3> :LeaderfFunction!<CR>
nmap <F4> :Toc<CR>
nmap <F7> :GoTests<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Rykka/riv.vim'
Plugin 'nvie/vim-flake8'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'mzlogin/vim-markdown-toc'
Plugin 'airblade/vim-gitgutter'
Plugin 'elzr/vim-json'
Plugin 'editorconfig/editorconfig-vim'
" Plugin 'nvie/vim-pyunit'
Plugin 'Rykka/InstantRst'
Plugin 'Valloric/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'tell-k/vim-autopep8'
Plugin 'hynek/vim-python-pep8-indent'
"Plugin 'scrooloose/syntastic'
" Plugin 'artur-shaik/vim-javacomplete2'
Plugin 'tpope/vim-rails'
Plugin 'ervandew/supertab'
Plugin 'Rykka/doctest.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'esoytekin/vim-sipindex'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'mattn/emmet-vim'
Plugin 'marijnh/tern_for_vim'
Plugin 'SirVer/ultisnips'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'buoto/gotests-vim'
Plugin 'Yggdroot/indentLine'
Plugin 'rhysd/vim-clang-format'
Plugin 'kana/vim-operator-user'
Plugin 'honza/vim-snippets'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'lyuts/vim-rtags'
Plugin 'ludovicchabant/vim-gutentags'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'w0rp/ale'
Plugin 'Yggdroot/LeaderF'
Plugin 'mileszs/ack.vim'
Plugin 'lifepillar/vim-solarized8'


Plugin 'moll/vim-node'
Plugin 'posva/vim-vue'

let g:jsx_ext_required = 0
" Plugin 'honza/vim-snippets'
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
Bundle 'The-NERD-tree'
" Bundle 'jistr/vim-nerdtree-tabs'
" Bundle 'dbext.vim'
Bundle 'VOoM'
Bundle 'python.vim--Vasiliev'
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
" set textwidth=85
" if exists('+colorcolumn')
"     set colorcolumn=85
" else
"     au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
" endif

autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype gitcommit setlocal spell textwidth=72



" Go Settings
"
au FileType go nmap gr <Plug>(go-run)
au FileType go nmap gb <Plug>(go-build)
au FileType go nmap got <Plug>(go-test)
au FileType go nmap gc <Plug>(go-coverage)
au FileType go nmap gds <Plug>(go-def-split)
au FileType go nmap gdv <Plug>(go-def-vertical)
au FileType go nmap gdt <Plug>(go-def-tab)
au FileType go nmap gdoc <Plug>(go-doc)
au FileType go nmap gv <Plug>(go-doc-vertical)
au FileType go nmap gs <Plug>(go-implements)
au FileType go nmap ge <Plug>(go-rename)

nnoremap gd :YcmCompleter GoToDefinition<CR>
nnoremap gdc :YcmCompleter GoToDeclaration <CR>
nnoremap gr :YcmCompleter GoToReferences<CR>


let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
"let g:syntastic_go_checkers=['go']
"let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck']
"let g:go_metalinter_enabled = ['vet', 'golint']
"let g:go_metalinter_autosave = 1
"let g:syntastic_go_checkers=['gometalinter']
"let g:syntastic_go_checkers=['go']
"let g:syntastic_javascript_checkers = ['jslint']
"let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }


let tagbar_left=1
let g:nerdtree_tabs_open_on_console_startup=0
let g:tagbar_sort = 0
"map sn <plug>NERDTreeTabsToggle<CR>
" let g:user_emmet_expandabbr_key = '<Tab><Tab>'

" nerdcommenter settings
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" ycm configs 

let g:ycm_min_num_of_chars_for_completion = 3 
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_complete_in_comments = 1
let g:tern#command = ["node", '/root/node_modules/tern/bin/tern', '--no-port-file']
let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']
let g:ycm_confirm_extra_conf = 0
set completeopt-=preview
"let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
"
function! MyTabFunction ()
    let line = getline('.')
    let substr = strpart(line, -1, col('.')+1)
    let substr = matchstr(substr, "[^ \t]*$")
    if strlen(substr) == 0
        return "\<tab>"
    endif
    return pumvisible() ? "\<c-n>" : "\<c-x>\<c-o>"
endfunction
inoremap <tab> <c-r>=MyTabFunction()<cr>
let g:gotests_bin = '/root/go/bin/gotests'

" ultisnips settings

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" 
" map <Left> <Nop>
" map <Right> <Nop>
" map <Up> <Nop>
" map <Down> <Nop>


" Vim
"let g:indentLine_color_term = 239
"GVim
"let g:indentLine_color_gui = '#A4E57E'
" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)
let g:indentLine_setColors = 1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 0
let g:indentLine_enabled = 1
nmap <leader>il :IndentLinesToggle<CR>
"
"
" your favorite style options
let g:clang_format#style_options = {
            \ "AccessModifierOffset" : -4,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true",
            \ "Standard" : "C++11"}

augroup ClangFormatSettings
  autocmd!
  " map to <Leader>cf in C++ code
  autocmd FileType c,cpp,objc nnoremap <buffer><F4> :<C-u>ClangFormat<CR>
  autocmd FileType c,cpp,objc vnoremap <buffer><F4> :ClangFormat<CR>
  " if you install vim-operator-user
  autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
  " Toggle auto formatting:
  nmap xC :ClangFormatAutoToggle<CR>
  "autocmd FileType c,cpp ClangFormatAutoEnable
augroup END



let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_folding_level = 6
let g:vim_markdown_autowrite = 1
nmap ft :TableFormat<CR>
nmap gtg :GenTocGFM<CR>
nmap utg :UpdateToc<CR>

let g:vim_markdown_frontmatter = 1


autocmd BufNewFile *develop.md 0r ~/.vim/templates/develop.md
autocmd BufNewFile *ops.md 0r ~/.vim/templates/ops.md
autocmd BufNewFile *design.md 0r ~/.vim/templates/design.md
let g:vim_markdown_frontmatter = 1
nnoremap gjd :YcmCompleter GoToDefinitionElseDeclaration<CR>

" gutentags configure
"
set tags=./.tags;,.tags

let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

let g:gutentags_ctags_tagfile = '.tags'
let s:vim_tags=expand('~/.cache/tags')
let g:gutentags_cache_dir=s:vim_tags

let g:gutentags_ctags_extra_args=['--fields=+niazS', '--extras=+q']
let g:gutentags_ctags_extra_args+=['--c++-kinds=+px']
let g:gutentags_ctags_extra_args+=['--c-kinds=+px']

if !isdirectory(s:vim_tags)
    silent! call mkdir (s:vim_tags, 'p')
endif

" cpp highlight configure

let g:cpp_class_scope_highlight =1
let g:cpp_member_variable_hightlight=1
let g:cpp_class_decl_hightlight = 1
let g:cpp_concepts_highlight = 1

"ale config

let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format= '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled=1

let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

" ag config
"
let g:ackprg= 'ag --nogroup --nocolor --column'
map <c-n> viwy:Ack<space>-i<space><c-s-R>"<CR>

" solarized config
set background=dark
colorscheme solarized8

"vim font
set guifont=Ubuntu_Mono:h12

"gui configs
if has("gui_running")
    au GUIENTER * simalt ~x
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
endif
