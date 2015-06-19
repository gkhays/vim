colorscheme wombat
 
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set smartindent
set nowrapscan
set lines=65
set columns=120
set scrolloff=5
set ruler
 
syntax on
 
" folding settings
 
set foldmethod=syntax
set foldnestmax=20
set foldlevel=0
set nofoldenable
 
set number

" basic pair completion
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
" imap (	()<Left>

" configure tags
set tags+=~/.vim/tags/cpp
 
" OmniCppComplete
let OmniCpp_NamespaceSearch = 1
let OmniCpp_GlobalScopeSearch = 1
let OmniCpp_ShowAccess = 1
let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
let OmniCpp_MayCompleteDot = 1 " autocomplete after .
let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
 
" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
 
set guifont=consolas