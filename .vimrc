"enable syntax and plugins (for netrw)
syntax enable 
filetype plugin on

"Search down into subfolders
"Provides tab-completion for all file-related tasks
set path+=**

" FINDING FILES

"display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy 

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer

" TAG JUMPING:
" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER 
" - This does not help if you want a visual list of tags

" AUTOCOMPLETE:
" The good stuff is documented in |ins-competion|

" HIGHLIGHTS:
" - ^x^n for just this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

" FILE BROWSING:
" Tweaks for browsing

let g:netrw_banner=0 " disable banner
" let g:netrw_browse_split=4 "open in prior window
let g:netrw_altv=1 "open splits to the right 
let g:netrw_liststyle=3 "tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

" SNIPPETS:
" Read an empty html template and move the cursor to title
nnoremap ,html :-1read $HOME/.vim/.skeleton.html<CR>3jwf>a


"vim config
set rnu
set mouse=a
set numberwidth=1
"syntax on
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
"set sw=2
set laststatus=2
set incsearch
set ignorecase
set smartcase
set tabstop=2
set shiftwidth=2
set expandtab

"plugins
call plug#begin()
  Plug 'tpope/vim-commentary'
  Plug 'tpope/vim-surround'
  Plug 'NLKNguyen/papercolor-theme'
call plug#end()

"papercolor-theme seettings:
set background=dark
colorscheme PaperColor
