runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

"essentials
set nocompatible
syntax on
filetype on
filetype plugin on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
" These are supposedly colors for Neovim's terminal emulator

"let g:terminal_color_0 = "#202020"
"let g:terminal_color_1 = "#333333"
"let g:terminal_color_2 = "#666666"
"let g:terminal_color_3 = "#80a78c"
"let g:terminal_color_4 = "#f7c527"
"let g:terminal_color_5 = "#ffffff"
"let g:terminal_color_6 = "#333333"
"let g:terminal_color_7 = "#ffffff"
"let g:terminal_color_8 = "#ec691e"
"let g:terminal_color_9 = "#73e4f6"
"let g:terminal_color_10 = "#ffffff"
"let g:terminal_color_11 = "#a1d7f2"
"let g:terminal_color_12 = "#73e4f6"
"let g:terminal_color_13 = "#f7c527" 
"let g:terminal_color_14 = "#ec691e"
"let g:terminal_color_15 = "#f7c527"
"let g:terminal_color_16 ="#202020"
"let g:terminal_color_background="#202020"
"let g:terminal_color_foreground="#eee"

" BE QUIET VIM!
:set noerrorbells
:set novisualbell

" allow backspacing over everything in insert mode
set backspace=indent,eol,start
let macvim_hig_shift_movement = 1

" put all swap and backup in a defined folder
set backupdir=~/.vim/backup
set directory=~/.vim/swap
set shortmess+=I

let g:tagbar_ctags_bin='/usr/local/bin/ctags'  " Proper Ctags locations
let g:tagbar_width=40                          " Default is 40, seems too wide
noremap <silent><Leader>\ :TagbarToggle<cr>

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" append paths to common scripting places
:set path+=/Users/sage/Dropbox/MayaScripts/
:set path+=/Users/sage/Library/Preferences/Autodesk/maya/2015-x64/scripts/

" set wrapping parameters
:set wrap
:set linebreak
:set nolist " list disables linebreak
" prevent Vim from automatically inserting line breaks in newly entered text:
:set textwidth=0
:set wrapmargin=0
:set linespace=0
" If you want to keep your existing 'textwidth' settings for most lines in your file, but not have Vim automatically reformat when typing on existing lines, you can do this with:
:set formatoptions+=l

filetype on
filetype plugin on

:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set noexpandtab
:set autoindent

set history=2000
" width of line number column. I set this low when using vim-signature for displaying my marks
set numberwidth=1

set mouse=a
set modelines=0
set hidden
set wildmenu
set wildmode=list:longest

" Disable all blinking. It is distracting and makes bracket matching confusing
:set guicursor+=n:blinkon0

" set Space as leader
nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"

" Change settings on insert mode to make it more obvious.
" Change cursor shape between insert and normal mode in iTerm2.app
if $TERM_PROGRAM =~ "iTerm"
	let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
    let &t_SI = "\<Esc>]50;CursorShape=1\x3" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif
" When leaving buffer, set to absolute numbers. This is very useful for copying static lines to relative positions in the current buffer, AND as a visual clue where your focus is.
au BufEnter * set relativenumber
au BufLeave * set norelativenumber

inoremap jk <ESC>
nnoremap <tab> %
vnoremap <tab> %
" command mode accessed without shift key.
:nnoremap ; :
" but keep ; because it is a useful key to repeat t and f commands!
:nnoremap : ;
" a hack to force iceking to refresh properly. Set one then the other.
colorscheme monokai
colorscheme iceking

set number
set relativenumber
set nocursorline

" show search results highlight
set hlsearch
" Search while typing
set incsearch
" show matching brackets
set showmatch
" ignore case when searching
set ignorecase
" try to be smart about case when searching
set smartcase

set tildeop
set wildmenu
" my favourite feature. The reason I love Vim. Prevent the cursor from hitting the top or bottom of the page.
set scrolloff=10
set gdefault
set gfn=InconsolataLGC:h12

set guioptions=egt
set guioptions+=i    " use a Vim icon
set guioptions-=m    " don't use the menubar
set guioptions-=rR   " don't show the scrollbars

" TODO: These settings are throwing an error on starting up nvim
"let g:indent_guides_enable_on_vim_startup=1
"let g:indent_guides_guide_size = 1
"let g:indent_guides_color_change_percent = 8
"let g:indent_guides_start_level = 2
"let g:indent_guides_exclude_filetypes = ['help', 'markdown']

" Use Markdown in Vim
let g:vim_markdown_folding_disabled=1
" Auto populate a path for Markdown notes
:nnoremap <Leader>k :echo strftime('/net/homes/clesage/notes/note-%F.md')<CR>

" remove highlighting from previous searches
nnoremap <silent><ESC> :nohl<CR><C-l>
nnoremap <Leader>x :nohl<CR>

nnoremap <F1> <Nop>
vnoremap <F1> <Nop>
cnoremap <F1> <Nop>
nnoremap <F2> :Vim2MayaPython<cr>
vnoremap <F2> :Vim2MayaPython<cr>
nnoremap <Leader>= :Vim2MayaPython<cr>
vnoremap <Leader>= :Vim2MayaPython<cr>
nnoremap <F3> :Undo2Maya<cr>
vnoremap <F3> :Undo2Maya<cr>

" explore my buffers without plugins
"""map <leader>j :buffers<CR>:buffer<Space>

" explore my buffers using plugins
:nnoremap <Leader>j :BufExplorer<CR>

" Unite
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>ut :<C-u>Unite -split -buffer-name=files   -start-insert file_rec/async:!<cr>
nnoremap <leader>uf :<C-u>Unite -split -start-insert -buffer-name=files   -start-insert file<cr>
nnoremap <leader>ur :<C-u>Unite -split -start-insert -buffer-name=mru     -start-insert file_mru<cr>
nnoremap <leader>uo :<C-u>Unite -split -start-insert -buffer-name=outline -start-insert outline<cr>
nnoremap <leader>uy :<C-u>Unite -split -buffer-name=yank    history/yank<cr>
nnoremap <leader>ub :<C-u>Unite -split -start-insert -auto-preview -buffer-name=buffer  buffer<cr>
nnoremap <leader>ug :Unite grep:.<cr>

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

" show my existing marks with vim-signature
":nnoremap <silent><Leader>m :SignatureToggleSigns<CR>

" explore my buffers using fuzzy search using CtrlP
let g:ctrlp_working_path_mode = 'c' " uses the CWD as the path
let g:ctrlp_follow_symlinks=1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:20'
let g:ctrlp_switch_buffer = 0 " if buffer is already open do NOT jump to it.
:nnoremap <Leader>oo :CtrlP C:/Users/clesage/docs/<CR>
:nnoremap <Leader>or :CtrlPMRU<CR>
:nnoremap <Leader>ob :CtrlPBuffer<CR>
:nnoremap <Leader>ot :CtrlPTag<CR>

" explore with NERDTree
:nnoremap <Leader>h :NERDTreeToggle<CR>
:nnoremap <Leader>f :NERDTreeFind<CR>
let NERDTreeWinSize=50
let NERDTreeMinimalUI=0

" traverse my buffers
:nnoremap <C-Tab> :bnext<cr>
:nnoremap <C-S-Tab> :bprevious<cr>

" ex_mode/history-scrollers (<C-p> and <C-n> don't filter history)
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" type %% to expand the current buffer directory
" this works well with :edit and :write, etc.
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

"Automatically jump to end of text you pasted:
"paste multiple lines multiple times with simple ppppp.
vnoremap <silent> y y`]
vnoremap <silent> p p`]
nnoremap <silent> p p`]

" splits go to the right and bottom instead of the default of left and top
set splitbelow
set splitright

" Copy & paste to system clipboard with <Leader>p and <Leader>y:
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" makes Y consistent with D and C (from cursor to end of line.)
nnoremap Y y$

" Type <leader>w to save file (lot faster than :w<Enter>):
nnoremap <Leader>w :w<CR>

"set listchars=eol:⏎,tab:▫·,trail:~,extends:>,precedes:<
set list listchars=extends:+,tab:▏\ ,trail:❌ 
" toggle invisibles but keep them off by default
:nnoremap <Leader>i :set list!<CR>
set nolist

" Start the Corna Simulator with F3 for iPhone skin. Shift-F3 for iPad skin.
map <F6> :!/Applications/CoronaSDK/Corona%20Simulator -project %:p -skin iPhone<CR>
map <S-F6> :!/Applications/CoronaSDK/Corona%20Simulator -project %:p -skin iPad<CR>

:inoremap <F2> <Esc>l<F2>
:inoremap <F3> <Esc>l<F3>
:inoremap <F4> <Esc>l<F4>
:inoremap <f5> <Esc>l<F5>

" unmap select-all in Normal Mode, so you can increment numbers with Ctrl-a
":nunmap <C-A>

" the following maps the Ctrl + Arrow Keys to jumping across window splits
map <c-Down> <c-w>j
map <c-Up> <c-w>k
map <c-Right> <c-w>l
map <c-Left> <c-w>h
autocmd FileType python set omnifunc=pythoncomplete#Complete

"Pythonic folding based on identation
:set foldmethod=indent
"not sure what this does
:set foldlevel=99

" Indent Guides options (plugin)
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2
let g:indent_guides_enable_on_vim_startup = 1

" remap start and end of line to something more memorable
nnoremap B ^
nnoremap E $

" Tell vim to remember certain things when we exit
"  '10  :  marks will be remembered for up to 10 previously edited files
"  "100 :  will save up to 100 lines for each register
"  :20  :  up to 20 lines of command-line history will be remembered
"  %    :  saves and restores the buffer list
"  n... :  where to save the viminfo files
set viminfo='200,\"2000,:3000,%,n~/.viminfo

" Return to last edit position when opening files (You want this!)
function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

" TODO: I think this might cause glitches with position jumps when moving between splits. Try to debug this.
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif

" Always show the status line
set laststatus=2

set statusline=\ »\ %t "filename
set statusline+=%m%r%h%w " modified flag
set statusline+=%=        " Switch to the right side
set statusline+=»\ %{getcwd()}%h\ \ »\  " current working directory
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\ -\ %1p%%\  " line number and percentage


" Alternate status line (from FS)
hi User1 guifg=#000000 guibg=#74d6d7 gui=boldreverse
set laststatus=2          " Always show the status line
set statusline=\ >\ [%Y]\ %t\  "filetype %Y and filename %t
set statusline+=%1*  "switch to User1 highlight
set statusline+=%m%r%h%w " modified flag
set statusline+=%*       "switch back to normal statusline highlight

set statusline+=%=        " Switch to the right side
set statusline+=>\ %{getcwd()}%h\ \ >\  " current working directory
set statusline+=%l        " Current line
set statusline+=/         " Separator
set statusline+=%L        " Total lines
set statusline+=\ -\ %1p%%\  " line number and percentage

set titlestring=[%Y]\ \ %t\ %a%r%h%w%m

" map the arrow keys so they work along visual lines.
" j and k remain default to prevent bugs.
" I also use Ctrl-e and Ctrl-y so I can keep the cursor at the same position while browsing/reading
nnoremap <Down> gj
nnoremap <Up> gk
vnoremap <Down> gj
vnoremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" This function isn't used, but it could be useful for sending snippets to Maya
function! s:GetSelRange()
	:let tmp = @@
	:silent %y+
	:let selected = @@
	:let @@ = tmp
	return selected
endfunction

" yank the entire buffer (uses EX mode, doesn't move cursor)
nnoremap <Leader>yy :%y+<CR>

" map search so it centers the results in the screen.
nnoremap n nzz
nnoremap N Nzz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz

if has("autocmd")
  " Highlight TODO, FIXME, NOTE, DONE, DOONE, etc.
  if v:version > 701
    autocmd Syntax * call matchadd('Todo',  '\W\zs\(TODO\|FIXME\|CHANGED\|XXX\|BUG\|HACK\|NOTE\|DONE\|INFO\|IDEA\)')
	" TODO: Debug worked in gvim, but not in terminal nvim with my current color settings.
    "autocmd Syntax * call matchadd('Debug', '\W\zs\(NOTE\|DONE\|INFO\|IDEA\)')
  endif
endif

" map search so it centers the results in the screen.
nnoremap n nzz
nnoremap N Nzz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz
