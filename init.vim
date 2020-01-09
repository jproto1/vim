
set runtimepath+=~/.vim 
set runtimepath+=~/.vim/after
set runtimepath+="c:/workdir/myTools/Neovim/bin/"
""set NVIM_QT_RUNTIME_PATH=&runtimepath
let &packpath = &runtimepath
" the basics
set nocompatible
filetype plugin on
filetype plugin indent on
syntax on

"source c:/myTools/vim/_vimrc  

  ""set g:Guifont=Ubuntu_Mono_for_Powerline
  
  " Neovim-qt Guifont command, to change the font
""command -nargs=? Guifont call rpcnotify(0, 'Gui', 'SetFont', "<args>")
" Set font on start
"let g:Guifont="DejaVu Sans Mono for Powerline:h9"
  "set background=light
  "colorscheme morning
 
                                                                                                                     
call plug#begin('~/.config/nvim/plugged')   

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
""Plug 'junegunn/vim-easy-align'

" Rainbow parens ==================================
Plug 'junegunn/rainbow_parentheses.vim'

" load the plug Plug
Plug 'junegunn/vim-plug'

" BufTabline ======================================
""Plug 'ap/vim-buftabline'

" airline statusline
Plug 'bling/vim-airline'

" Calendar ========================================
Plug 'itchyny/calendar.vim'

"Tagbar
Plug 'majutsushi/tagbar'
Plug 'ludovicchabant/vim-gutentags'"

" hot key macros - commenting
""Plug 'https://github.com/vim-scripts/c.vim.git'

" === Themes ====
"PaperColor theme
Plug 'NLKNguyen/papercolor-theme'
Plug 'JulioJu/neovim-qt-colors-solarized-truecolor-only'
Plug 'morhetz/gruvbox'
Plug 'tomasr/molokai'
Plug 'joshdick/onedark.vim'
"" Plug '~\\.config\\nvim\\plugged\\iceberg.vim'
Plug 'w0ng/vim-hybrid'
Plug 'cocopon/iceberg.vim'
Plug 'reedes/vim-colors-pencil'
Plug 'liuchengxu/space-vim-theme'
Plug 'iCyMind/NeoSolarized'

" Syntax hl
""Plug 'sheerun/vim-polyglot'
"
" airline themes
Plug 'vim-airline/vim-airline-themes'

" ===============
"
"The Silver Searcher front end
Plug 'rking/ag.vim'

" RipGrep frontEnd ================
Plug 'jremmen/vim-ripgrep'

"Gundo
""Plug 'sjl/Gundo'

"Gundo for Neovim
Plug 'simnalamburt/vim-mundo'
  nnoremap <F5> :MundoToggle<CR>

"Tim Pope -----
"
"sensible defaults
Plug 'tpope/vim-sensible'

" Unimpaired
Plug 'tpope/vim-unimpaired'

"Automatic Session management
Plug 'tpope/vim-obsession'

"surround - conflict with deoplete
Plug 'tpope/vim-surround'

"enhanced netrw
"Plug 'tpope/vim-vinegar'

" -------------

"enhanced C++ highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Auto paren
"" Plug 'C:\\Users\\prokop\\.config\\nvim\\plugged\\lexima'
Plug 'Raimondi/delimitMate'

"commenting
""Plug 'tpope/vim-commentary'
Plug 'scrooloose/nerdcommenter'
"Plug 'WolfgangMehner/c-support'
"" Plug 'tomtom/tcomment_vim'

" detect indent style
Plug 'ciaranm/detectindent'

" Nerdtree
Plug 'scrooloose/nerdtree'
  nnoremap <F3> :NERDTreeToggle<CR>

" autocomplete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"" Plug 'tweekmonster/deoplete-clang2'
"" Plug 'davidhalter/jedi-vim'

" function signatures
""Plug 'Shougo/echodoc'

" org-mode
""Plug 'jceb/vim-orgmode'
"  nnoremap <F2> :OrgCheckBoxToggle<CR>

" Enhanced Search by Selection ====================
Plug 'nelstrom/vim-visual-star-search'

" Famous Ctrl-P ===================================
Plug 'kien/ctrlp.vim'

" Syntastic =======================================
""Plug 'scrooloose/syntastic'

" Ale Syntax checker ==============================
"Plug 'dense-analysis/ale'

" Markdown ========================================
""Plug 'gabrielelana/vim-markdown'
""Plug 'plasticboy/vim-markdown'

" Tables ==========================================
Plug 'dhruvasagar/vim-table-mode'
"" >> Plug 'godlygeek/tabular'

" speeddating rqd by orgmode
"=Plug 'tpope/vim-speeddating'

" vimwiki =========================================
Plug 'vimwiki/vimwiki', { 'branch': 'dev' }
  ""let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
  " Don't use vimwiki filetype outside of the wiki path
  let g:vimwiki_global_ext = 0
  let wiki = {}
  let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
  let g:vimwiki_list = [wiki]
  let g:vimwiki_use_calendar = 1

" Initialize plugin system
call plug#end()
" Reload init and call :PlugInstall
"
" Set font on start
""let g:Guifont="DejaVu Sans Mono for Powerline:h7"
"" Set in ginit.vim

"ignore . files in vinegar
"let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

 let g:airline#extensions#bufferline#enabled = 1

 " vim-jedi ========================================
""let g:jedi#completions_command = "<C-Space>"

" vimwiki ==========================================

" deoplete startup
let g:deoplete#enable_at_startup = 1

let g:deoplete#auto_complete_delay = 150
let g:deoplete#auto_refresh_delay = 1000
let g:deoplete#enable_camel_case = 1

"" set tab complete
""inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

"" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> deoplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS>  deoplete#smart_close_popup()."\<C-h>"

" deoplete auto select option
set completeopt+=noinsert

"" gutentag status ===================================
"" set statusline+=%{gutentags#statusline()}
let g:gutentags_define_advanced_commands = 1

"" Exuberant Ctags path
let g:tagbar_ctags_bin="c:/Users/prokop/myTools/ctags.exe"

nnoremap <F4> :TagbarToggle<CR>
" TagBar{{{
let g:tagbar_left = 1
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
"}}}

" ignore case in searches
set ic
 " set tabs
set ts=4
set sts=4
set sw=4

" set directory to match file being edited
set autochdir

" set temp dir
let $TMPDIR = "c:\workdir\tmp"

"re-read file if changed
set autoread
"
" Set python version
let g:python3_host_prog="C:/Users/prokop/AppData/Local/Programs/Python/Python37-32/python.EXE"
"""C:/Python37/python.exe"
"let g:python3_host_prog="C:/Users/prokop/scoop/shims/python.exe"

" Rainbow parens setup ===============================
" Activation based on file type
augroup rainbow_lisp
  autocmd!
  autocmd FileType cpp,c RainbowParentheses
augroup END

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
"au VimEnter * RainbowParenthesesToggle
"au Syntax * RainbowParenthesesLoadRound
"au Syntax * RainbowParenthesesLoadSquare
"au Syntax * RainbowParenthesesLoadBraces


"disable python2
let g:loaded_python_provider = 1

" Set tabstop, softtabstop and shiftwidth to the same value ----------------------------------------------------------------- {{{
" ================================================================
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction
" ================================================================

" Find all in file ----------------------------------------------------------------- {{{
" ================================================================
" Map F4 to search for all occur in current file
"map <F2> :execute 'vimgrep /'.expand('<cword>').'/gj '.expand('%') <BAR> copen<CR>
map <F2> :Rg<CR>

"color defs
let s:brown = "905532"
let s:aqua =  "3AFFDB"
let s:blue = "689FB6"
let s:darkBlue = "44788E"
let s:purple = "#834F79"
let s:lightPurple = "834F79"
let s:red = "AE403F"
let s:beige = "F5C06F"
let s:yellow = "F09F17"
let s:orange = "D4843E"
let s:darkOrange = "F16529"
let s:pink = "CB6F6F"
let s:salmon = "EE6E73"
let s:green = "8FAA54"
let s:lightGreen = "31B53E"
let s:white = "FFFFFF"
let s:rspec_red = 'FE405F'
let s:git_orange = 'F54D27'

" NERDTress File highlighting

function! NERDTreeHighlightFile(extension, fg, bg, guifg, guibg)
 exec 'autocmd filetype nerdtree highlight ' . a:extension .' ctermbg='. a:bg .' ctermfg='. a:fg .' guibg='. a:guibg .' guifg='. a:guifg
 exec 'autocmd filetype nerdtree syn match ' . a:extension .' #^\s\+.*'. a:extension .'$#'
endfunction

call NERDTreeHighlightFile('f', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('inl', 'blue', 'none', '#3366FF', '#151515')
call NERDTreeHighlightFile('cpp', 'green', 'none',  "#F16529", 'lightgray')
"call NERDTreeHighlightFile('cxx', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('config', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('conf', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('java', 'yellow', 'none', 'yellow', '#151515')
"call NERDTreeHighlightFile('html', 'yellow', 'none', 'yellow', '#151515')
call NERDTreeHighlightFile('h', 'cyan', 'none', s:purple, 'lightgray')
call NERDTreeHighlightFile('cxx', 'cyan', 'none', 'cyan', '#151515')
"call NERDTreeHighlightFile('hxx', 'Red', 'none', 'red', '#151515')
"call NERDTreeHighlightFile('vcxproj', 'Red', 'none', '#ffa500', '#151515')
"call NERDTreeHighlightFile('php', 'Magenta', 'none', '#ff00ff', '#151515')

"let g:NERDTreeFileExtensionHighlightFullName = 1

"ALE =============================================================
"let g:ale_sign_column_always = 1

" Syntastic ======================================================
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_enable_signs=1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_cpp_checkers = ['cppcheck']
"let g:syntastic_c_checkers = ['cppcheck']
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}

" airline config
" ================================================================
"let g:airline_extensions = []
let g:airline#extensions#tabline#enabled = 1
silent! call airline#extensions#whitespace#disable()
let g:airline_powerline_fonts = 1
let g:Powerline_symbols = "fancy"
let g:airline_skip_empty_sections = 1
"let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#whitespace#enabled = 0
set fileencoding=utf-8
""let g:airline#extensions#tabline#show_buffers = 1
""let g:airline#extensions#tabline#buffer_nr_show = 1
""let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tagbar#enabled = 1
"let g:airline#extensions#ale#enabled = 1

"" CUSTOM SYMBOLS

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

  " powerline symbols
  let g:airline_left_sep = ''
  let g:airline_left_alt_sep = ''
  let g:airline_right_sep = ''
  let g:airline_right_alt_sep = ''
  let g:airline_symbols.branch = ''
  let g:airline_symbols.readonly = ''
  let g:airline_symbols.linenr = '☰'
  let g:airline_symbols.maxlinenr = ''

set noshowmode

set encoding=utf-8

let g:bufferline_echo = 1

""set laststatus=2

" just like Powerline...
""let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'molokai'

"jump to last known position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Highlight search results
set hlsearch
" Incremental search, search as you type
set incsearch
" Incremental substitution
set icm=nosplit
" Ignore case when searching
set ignorecase smartcase
" Ignore case when searching lowercase
set smartcase

" Set the title of the iterm tab
"set title

" Line numbering
set number

" set nowrap
set nowrap

" set cursor line
set cursorline


set termguicolors
colo PaperColor
"colo Molokai
set background=light
""colo solarized
"colo iceberg

""set background=light " or dark
""colorscheme solarized_nvimqt

"" =============== Auto detect file changes and reload ===================
" https://github.com/neovim/neovim/issues/2127
augroup AutoSwap
        autocmd!
        autocmd SwapExists *  call AS_HandleSwapfile(expand('<afile>:p'), v:swapname)
augroup END

function! AS_HandleSwapfile (filename, swapname)
        " if swapfile is older than file itself, just get rid of it
        if getftime(v:swapname) < getftime(a:filename)
                call delete(v:swapname)
                let v:swapchoice = 'e'
        endif
endfunction
autocmd CursorHold,BufWritePost,BufReadPost,BufLeave *
  \ if isdirectory(expand("<amatch>:h")) | let &swapfile = &modified | endif

augroup checktime
    au!
    if !has("gui_running")
        "silent! necessary otherwise throws errors when using command
        "line window.
        autocmd BufEnter,CursorHold,CursorHoldI,CursorMoved,CursorMovedI,FocusGained,BufEnter,FocusLost,WinLeave * checktime
    endif
augroup END

"" Custom Mappings

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Window splitting
set splitbelow
set splitright
