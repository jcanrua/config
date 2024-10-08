" BASICOS "
set tabstop=4
set shiftwidth=4
set number
set encoding=utf-8
set relativenumber
syntax on
colorscheme onedark
set autoindent
filetype on
filetype plugin on
filetype indent on
"                 "

" COMANDOS "
let mapleader = " "
noremap <leader>U :call UltiSnips#RefreshSnippets()<CR>
noremap <leader>c :write<CR>:VimtexCompile<CR>


" PLUGINS "
call plug#begin()

" List your plugins here
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'ervandew/supertab'
call plug#end()

"                    "

"  PLUGINS SNIPPETS      "I
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']      
let g:UltiSnipsExpandTrigger       = '<Tab>'    " use Tab to expand snippets
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'    " use Tab to move forward through tabstops
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'  " use Shift-Tab to move backward through tabstops

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

"

"  COLORSCHEME       "
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"                     "


