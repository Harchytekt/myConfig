" == == == == == == == == == == == == == ==
"        Coded by Alexandre DUCOBU
"      Date TUESDAY, JULY 31, 2018
" == == == == == == == == == == == == == ==

" Call Plug
call plug#begin('~/.local/share/nvim/plugged')

" Add Vim-Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" ALE (Asynchronous Lint Engine)
Plug 'w0rp/ale'

" Autopairs
Plug 'jiangmiao/auto-pairs'

" c.vim : Speed up c writing on vim
Plug 'vim-scripts/c.vim'

" Clang-complete : for C/C++ autocomplete
Plug 'Rip-Rip/clang_complete'

" VIM-Dispatch : Useful for starting Omnisharp
Plug 'tpope/vim-dispatch'

" Material Monokai theme
Plug 'skielbasa/vim-material-monokai'

" Easy Motion : faster move in vim
" Press <Leader> <Leader> and the letter you want to reach
Plug 'easymotion/vim-easymotion'

" Emmet : new ZenCoding
" Use abreviations and then type : <C-Y>,
Plug 'mattn/emmet-vim'

" Git
Plug 'tpope/vim-fugitive'

" Grammalecte
Plug 'dpelle/vim-Grammalecte'

" Indent Guide
Plug 'nathanaelkane/vim-indent-guides'

" JavaComplete2
Plug 'artur-shaik/vim-javacomplete2'

" Jedi vim : Python completion
" Don't forget to install jedi: sudo pip install jedi
" Plug 'davidhalter/jedi-vim'

" Markdown
function! BuildComposer(info)
    if a:info.status != 'unchanged' || a:info.force
        if has('nvim')
            !cargo build --release
        else
            !cargo build --release --no-default-features --features json-rpc
        endif
    endif
endfunction
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Matchit : useful to switch between the start and the end of a function
Plug 'tmhedberg/matchit'

" NERDCommenter : Better comments in vim
Plug 'scrooloose/nerdcommenter'

" NERDTree
Plug 'scrooloose/nerdtree'

" Numbers.vim
Plug 'myusuf3/numbers.vim'

" PHP Autocomplete
" Plug 'shawncplus/phpcomplete.vim'

" Plantuml-previewer
Plug 'weirongxu/plantuml-previewer.vim'

" Plantuml-syntax
Plug 'aklt/plantuml-syntax'

" Dependency
Plug 'tyru/open-browser.vim'

" Surround
Plug 'tpope/vim-surround'

" Table mode
Plug 'dhruvasagar/vim-table-mode'

" Tabular : useful for great alignement
Plug 'godlygeek/tabular'

" TagBar
" Install ctags before using it
Plug 'majutsushi/tagbar'

" Tern
" For JavaScript IDE features
Plug 'ternjs/tern_for_vim'

" VimTex
" Plug 'lervag/vimtex'

" NVIM-TypeScript
Plug 'mhartington/nvim-typescript'

" Syntax highlighting
Plug 'leafgarland/typescript-vim'

" UndoTree : See all undos
Plug 'mbbill/undotree'

" ZoomWin : Show a buffer without killing the others
" Use <C-w>o to show and hide buffer
Plug 'vim-scripts/ZoomWin'

" All of your Plugins must be added before this line
call plug#end()                       " Required
syntax enable                         " Required



" == == == == == == == == == == == == ==
" Global configuration
" == == == == == == == == == == == == ==

set autowrite                         " Save automatically all the buffers in vim
set backup
" set colorcolumn=81                    " Set the 80 character column
set cursorline                        " Highlight the current line
set encoding=utf-8
set hidden                            " Any buffer can be hidden
set history=1000                      " Set a huge history
set linespace=0                       " No extra spaces between rows
set nojoinspaces                      " Prevent inserting two spaces after punctuation on a join (J)
set path+=**                          " Fuzzy matching
set relativenumber                    " Set the number in vim
set scrolljump=5                      " Lines to scroll when cursor leaves screen
set scrolloff=3                       " Minimum lines to keep above and below cursor
set showmatch                         " Show current brackets
set splitbelow                        " Put new split windows to the bottom of the current
set splitright                        " Put new vsplit windows to the right of the current
set wildmenu                          " Show list instead of just completing
set wildmode=list:longest,full        " Command <Tab> completion, list matches, then longest common part, then all.
set winminheight=0                    " Windows can be 0 line high

" Folding
set foldenable                        " Auto fold code
set foldmethod=syntax                 " Fold are defined by syntax highlighting

" Indentation
" Don't enable smarindent or cindent with filetype plugin indent on
filetype plugin indent off             " Indentation based on filetype
set autoindent                        " Do not interfere with other indentation settings

" Invisible characters
set list
" set listchars=tab:——,trail:^,nbsp:≡,space:_,eol:⌝   " Display invisible characters
"set listchars=tab:→\ ,trail:^,nbsp:≡,space:_,eol:⌝
set listchars=tab:\|\ ,trail:^,nbsp:≡,space:•,eol:⌝

" Enable Omni Completiton {{{
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType java set omnifunc=javacomplete#Complete
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType typescript setlocal omnifunc=TSComplete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
" }}} Enable Omni Completiton

" Search {{{
set hlsearch                          " Highlight the search result
set ignorecase                        " Case insensitive search
set incsearch                         " Find as I type during the search
set smartcase                         " Case sensitive only if search contains uppercase letter
" }}} Search

" Tabulation and spaces {{{
set noexpandtab                       " Don't show spaces instead of tabs
set shiftwidth=4                      " Columns per <<
set softtabstop=4                     " Spaces per tab
set tabstop=4                         " Columns per tabs
set copyindent                        " Copy indent from the previous line
set shiftround                        " Round indent to multiple of 'shiftwidth'
" }}} Tabulation and spaces

" Vim directories
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set viewdir=~/.local/share/nvim/views//

" Wrapping
set formatoptions-=t                  " Keep my textwidth setting
set textwidth=0                       " Word wrap without line break
set wrapmargin=0                      " Word wrap without line break
set whichwrap=b,s,h,l,<,>,[,]         " Backspace and cursor keys wrap too
set wrap linebreak                    " Set wrapping with soft wrap (set wm=2 => hard wrap)

" == == == == == == == == == == == == ==
" Keymap configuration
" == == == == == == == == == == == == ==

let mapleader = ","
let g:mapleader = ","

" ALE
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" Buffer
nmap <leader>bn :bnext<CR>
nmap <leader>bp :bprevious<CR>
nmap <leader>bf :bfirst<CR>
nmap <leader>bd :bdelete<CR>

" Disable the arrow keys
" nmap <UP> <NOP>
" nmap <DOWN> <NOP>
" nmap <LEFT> <NOP>
" nmap <RIGHT> <NOP>

" Git
nmap <leader>gs :Gstatus<CR>
nmap <leader>ga :Git add -A<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>
nmap <leader>gl :Glog<CR>
nmap <leader>gp :Gpush<CR>
nmap <leader>gr :Gread<CR>
nmap <leader>gw :Gwrite<CR>
nmap <leader>ge :Gedit<CR>

" Highlight
map <C-h> :nohl<CR>

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Numbers.vim
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" Tabular
nmap <Leader>t& :Tabularize /&<CR>
vmap <Leader>t& :Tabularize /&<CR>
nmap <Leader>t= :Tabularize /=<CR>
vmap <Leader>t= :Tabularize /=<CR>
nmap <Leader>t=> :Tabularize /=><CR>
vmap <Leader>t=> :Tabularize /=><CR>
nmap <Leader>t: :Tabularize /:<CR>
vmap <Leader>t: :Tabularize /:<CR>
nmap <Leader>t:: :Tabularize /:\zs<CR>
vmap <Leader>t:: :Tabularize /:\zs<CR>
nmap <Leader>t, :Tabularize /,<CR>
vmap <Leader>t, :Tabularize /,<CR>
nmap <Leader>t,, :Tabularize /,\zs<CR>
vmap <Leader>t,, :Tabularize /,\zs<CR>
nmap <Leader>t<Bar> :Tabularize /<Bar><CR>
vmap <Leader>t<Bar> :Tabularize /<Bar><CR>
nmap <Leader>t\ :Tabularize /\\<CR>
vmap <Leader>t\ :Tabularize /\\<CR>
nmap <Leader>t" :Tabularize /"<CR>
vmap <Leader>t" :Tabularize /"<CR>

" Tagbar
map <leader>tt :TagbarToggle<CR>



" == == == == == == == == == == == == ==
" Plugins configuration
" == == == == == == == == == == == == ==

" Airline
let g:airline#extensions#tabline#enabled = 1

" ALE
" Lint only when saving the file
" let g:ale_lint_on_text_changed = 'never'
" Linters
let g:ale_linters = {
\   'tex': ['chktex', 'proselint', 'write-good'],
\}

" Clang completition
let g:clang_library_path='/usr/lib/'

" Git
" Useful git help
" Instead of reverting the cursor to the last position in the buffer, we set it to the first line when editing a git commit message
au FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Grammalecte
let g:grammalecte_cli_py='/opt/grammalecte/cli.py'

" Indent Guide
let g:indent_guides_start_level = 2
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Numbers.vim
let g:enable_numbers = 1
let g:numbers_exclude = ['unite', 'startify', 'w3m', 'vimshell', 'tagbar', 'gundo', 'minibufexpl', 'nerdtree']
:au FocusLost * :set number
:au FocusGained * :set relativenumber
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

" vim-table-mode
" Compatibility with markdown
let g:table_mode_corner='|'

" Undo tree
let g:undotree_SetFocusWhenToggle=1



" == == == == == == == == == == == == ==
" Spellchecking
" == == == == == == == == == == == == ==

map <F9> <Esc>:silent setlocal spell! spelllang=en<CR>
map <F10> <Esc>:silent setlocal spell! spelllang=fr<CR>
set spellsuggest=best



" == == == == == == == == == == == == ==
" Theme
" == == == == == == == == == == == == ==
" Set the full color compatibility for vim and terminal

syntax on
color material-monokai
let g:airline_theme='materialmonokai'

hi Normal ctermbg=NONE
