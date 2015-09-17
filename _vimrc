set shell=/bin/bash
syntax enable
syntax on
"------------------- TAB settings -----------------------"
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set list listchars=tab:>-
"autocmd FileType * set tabstop=4|set shiftwidth=4|set noexpandtab
"autocmd FileType python,c,cpp,php set tabstop=4|set shiftwidth=4|set expandtab
"-----------------settings for using easily--------------"
"Set color column line
set cc=81
" Sets how many lines of history VIM har to remember
set history=400
" Set to auto read when a file is changed from the outside
set autoread
" Have the mouse enabled all the time:
"set mouse=a
" Do not redraw, when running macros.. lazyredraw
set lz
" set 7 lines to the curors - when moving vertical..
set so=7
" The commandbar is 1 high
set cmdheight=1
" Change buffer - without saving
set hid
" Ignore case when searching
set ignorecase
"set incsearch
" Set magic on
set magic
" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=
" How many tenths of a second to blink
set mat=4
" Highlight search things
set hlsearch
" Turn backup off
set nobackup
set nowb
set noswapfile
" switch buffers with Tab
map <C-Tab> :bn<CR>
map <S-Tab> :bp<CR>
"-------------------settings for backspace button--------"
set backspace=indent,eol,start
set nocompatible
"----------Hight Light Current Line----------------------"
"set cursorline
"hi CursorLine   cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
"----------Set font according to system------------------"
"  colorscheme oceandeep
"  colorscheme evening
  colorscheme desert
  set guifont=Consolas
  set background=dark
  set nu
"----------chinese character supported-------------------"
set fileencodings=utf-8,cp936,gbk,default,latin1
set fileencoding=utf-8
set encoding=utf-8
"----------------setting for vim map---------------------"
map <silent> <F3> :TlistToggle<CR>
map <silent> <F2> :NERDTreeToggle<cr>
map <silent> <F4> :WMToggle<cr>
"----------------setting for ctags-----------------------"
set autochdir
set tags=tags;

"----------------setting for taglist---------------------"
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Open = 0
let Tlist_Auto_Update = 1
let Tlist_Close_On_Select = 0
let Tlist_Compact_Format = 0
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Exit_OnlyWindow = 0
let Tlist_File_Fold_Auto_Close = 0
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Hightlight_Tag_On_BufEnter = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Max_Submenu_Items = 1
let Tlist_Max_Tag_Length = 25 
let Tlist_Process_File_Always = 0
let Tlist_Show_Menu = 0
let Tlist_Show_One_File = 1
let Tlist_Sort_Type = "order"
let Tlist_Use_Horiz_Window = 0
let Tlist_Use_Right_Window = 1
let Tlist_WinWidth = 30
let Tlist_php_settings = 'php;c:class;i:interfaces;d:constant;f:function'
"----------------setting for NERD_tree---------------------"
" let loaded_nerd_tree=1 "禁用所有与NERD_tree有关的命令
let NERDTreeIgnore=['\.vim$','\~$']   "不显示指定的类型的文件
let NERDTreeShowHidden=0              "不显示隐藏文件(好像只在linux环境中有效)
let NERDTreeSortOrder=['//$','/.cpp$','/.c$','/.h$', '*']  "排序
let NERDTreeCaseSensitiveSort=0       "不分大小写排序
let NERDTreeWinSize=30
let NERDChristmasTree=1
" let NERDTreeShowLineNumbers=1
let NERDTreeShowBookmarks=0
let NERDTreeQuitOnOpen=0    "打开文件后, 关闭NERDTrre窗口
let NERDTreeHighlightCursorline=1 "高亮NERDTrre窗口的当前行
let NERDTreeDirArrows=0 "+++++------
nmap <silent> <leader>tmk :Bookmark expand(/"<cword>/")<cr>

"----------------setting for omnicppcomplete----------------"
set nocp
filetype plugin indent on
set completeopt=longest,menu
"omnicppcomplete color settings
highlight Pmenu    guibg=darkgrey guifg=black 
highlight PmenuSel guibg=lightgrey guifg=black

"----------------setting for SuperTab-----------------------"
let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"
"----------------setting for winManagerWindow---------------"
let g:winManagerWindowLayout='FileExplorer|TagList'
