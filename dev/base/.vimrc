set ts=2
set ai
set modelines=0
set nocompatible

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
" git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
" original repos on github
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/gist-vim'
Bundle 'airblade/vim-gitgutter'
Bundle 'tpope/vim-fugitive'
Bundle 'grep.vim'

" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
let g:fuf_coveragefile_exclude = '\v\~$|\.(o|exe|dll|bak|orig|swp|class)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])'
map <Leader>ff <ESC>:FufCoverageFile<CR>
map <Leader>fb <ESC>:FufBuffer<CR>
map <Leader>fd <ESC>:FufDir<CR>
Bundle 'SuperTab'
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
"python env
Bundle 'taglist.vim'
Bundle 'python-tag-import'
"set  rtp+=/usr/local/lib/python2.7/dist-packages/powerline/bindings/vim/
Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
set laststatus=2
set t_Co=256
Bundle 'https://github.com/rkulla/pydiction.git'
Bundle 'scrooloose/nerdtree'
Bundle 'jiangmiao/auto-pairs'
Bundle 'scrooloose/syntastic'
"python dev
Bundle  'https://github.com/klen/python-mode.git'
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0

"python jedi
Bundle 'davidhalter/jedi-vim'

" Autocompletion
"Bundle 'AutoComplPop'
Bundle 'othree/vim-autocomplpop'
Bundle 'Townk/vim-autoclose'
" " Python code checker
Bundle 'joonty/vdebug.git'
" " Search results counter
Bundle 'IndexedSearch'
" " XML/HTML tags navigation
Bundle 'matchit.zip'
" " Gvim colorscheme
Bundle 'Wombat'
" " Yank history navigation
Bundle 'YankRing.vim'
Bundle 'https://github.com/majutsushi/tagbar'
"tagbar 
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 1
let g:tagbar_compact = 1
let g:tagbar_foldlevel = 99
Bundle 'vim-ruby/vim-ruby'
Bundle 'rosenfeld/conque-term'
:nnoremap <S-w> :q!<CR>
:nnoremap <S-t> :ConqueTermSplit bash --rcfile ~/.bash_profile<CR>


"Go lang
Bundle 'fatih/vim-go'
Bundle 'nsf/gocode'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

Bundle 'derekwyatt/vim-scala'
Bundle 'craigemery/vim-autotag'
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
" Optional:
Bundle "honza/vim-snippets"
"NerdTreetoggle
map <F2> :NERDTreeToggle<CR>
noremap <silent> <Leader>y :TagbarToggle
let NERDTreeWinPos = "right"

"for gitgutter enable
let g:gitgutter_enabled = 1
let g:Powerline_symbols = 'unicode'
 filetype plugin indent on     " required!

" Normally we use vim-extensions. If you want true vi-compatibility
 " remove change the following statements
set nocompatible        " Use Vim defaults instead of 100% vi compatibility
set backspace=2         " more powerful backspacing
set tabstop=2
set shiftwidth=2
set expandtab

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
syntax on
"setup for mouse
"if has("mouse")
"            set mouse=a
"endif
						 "make ~/.ctags file for option
						 "refer ~/.vim/.ctags file 
						 "-R --language-force=java -f.tags /opt/sun-jdk-1.5.0.08/share/
set tags=~/mytags,~/.pytags
let g:pydiction_location = '~/.vim/pydiction-1.2/complete-dict'

						 " Commenting blocks of code.
autocmd FileType c,cpp,java,scala let b:comment_leader = '// '
autocmd FileType sh,ruby,python   let b:comment_leader = '# '
autocmd FileType conf,fstab       let b:comment_leader = '# '
autocmd FileType tex              let b:comment_leader = '% '
autocmd FileType mail             let b:comment_leader = '> '
autocmd FileType vim              let b:comment_leader = '" '
