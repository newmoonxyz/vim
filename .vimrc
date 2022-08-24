"General settings
"================

autocmd! bufwritepost .vimrc source % " auto reload vimrc when editing it
set number                            " show line numbers
syntax enable                         " Turn on syntax highlighting
syntax on                             " Turn on grammar checking
"colorscheme gruvbox 
"colorscheme everforest
colorscheme catppuccin_mocha
"colorscheme catppuccin_frappe
"colorscheme one
set background=dark
autocmd VimEnter * hi Normal ctermbg=none
set cursorline                        " highlight current line
set relativenumber
set dictionary=/home/nebula/.vim/eng.txt
set nu
set laststatus=2   	              " Status bar configuration		 
set ruler                             " show the cursor position all the time
set nohlsearch	           	      " highlight search terms
set hidden
set autoindent  		      " always set autoindenting on
set showmatch                         " show matching parenthesis
set nowrap
set incsearch
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')} " custom status line
set showmode                         " always show what mode we're currently editing in
set showcmd                          " show (partial) command in the last line of the screen
                                      " this also shows visual selection info

"for key in ['<Up>', '<Down>', '<Left>', '<Right>']
"exec 'noremap' key '<Nop>'
"  exec 'inoremap' key '<Nop>'
"  exec 'cnoremap' key '<Nop>'
"endfor







"Custom tree, credits- https://shapeshed.com/vim-netrw/ 
"=====================================================

let  g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4        
let g:netrw_altv = 1                  " > A tree explorer netrw, looks like NERDtree 
let g:netrw_winsize = 15
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END


au InsertEnter * hi statusline guifg=black guibg=#d7afff ctermfg=black ctermbg=magenta
au InsertLeave * hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan
hi statusline guifg=black guibg=#8fbfdc ctermfg=black ctermbg=cyan

" Status line
" default: set statusline=%f\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %P%)

" Status Line Custom
let g:currentmode={
    \ 'n'  : 'Normal',
    \ 'no' : 'Normal·Operator Pending',
    \ 'v'  : 'Visual',
    \ 'V'  : 'V·Line',
    \ '^V' : 'V·Block',
    \ 's'  : 'Select',
    \ 'S'  : 'S·Line',
    \ '^S' : 'S·Block',
    \ 'i'  : 'Insert',
    \ 'R'  : 'Replace',
    \ 'Rv' : 'V·Replace',
    \ 'c'  : 'Command',
    \ 'cv' : 'Vim Ex',
    \ 'ce' : 'Ex',
    \ 'r'  : 'Prompt',
    \ 'rm' : 'More',
    \ 'r?' : 'Confirm',
    \ '!'  : 'Shell',
    \ 't'  : 'Terminal'
    \}

set laststatus=2
set noshowmode
set statusline=
set statusline+=%0*\ %n\                                 " Buffer number
set statusline+=%1*\ %<%F%m%r%h%w\                       " File path, modified, readonly, helpfile, preview
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %Y\                                 " FileType
set statusline+=%3*│                                     " Separator
set statusline+=%2*\ %{''.(&fenc!=''?&fenc:&enc).''}     " Encoding
set statusline+=\ (%{&ff})                               " FileFormat (dos/unix..)
set statusline+=%=                                       " Right Side
set statusline+=%2*\ col:\ %02v\                         " Colomn number
set statusline+=%3*│                                     " Separator
set statusline+=%1*\ ln:\ %02l/%L\ (%3p%%)\              " Line number / total lines, percentage of document
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}\  " The current mode

hi User1 ctermfg=007 ctermbg=239 guibg=#4e4e4e guifg=#adadad
hi User2 ctermfg=007 ctermbg=236 guibg=#303030 guifg=#adadad
hi User3 ctermfg=236 ctermbg=236 guibg=#303030 guifg=#303030
hi User4 ctermfg=239 ctermbg=239 guibg=#4e4e4e guifg=#4e4e4e

























