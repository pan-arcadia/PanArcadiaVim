let mapleader  = " "				    " Set our mapleader to <space>.

" Exit INSERT Mode 
:inoremap jk <esc>				    

" Edit vimrc - Open vimrc in vertical split window.
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>	    

" Source vimrc - Source our vimrc file.
:nnoremap <leader>sv :source $MYVIMRC<cr>	    

" Edit ideas.md.
" :nnoremap <leader>ei :vsplit ~/Documents/pannotes/ideas.md<cr>
:nnoremap <leader>ei :e ~/Documents/pannotes/ideas.md<cr>

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on
set termguicolors            " Enable true colors.

:set laststatus=2				    " Always show status line.
:set statusline=%f				    " Path to file.
:set statusline+=\ %y				    " Filetype.
:set statusline+=\ [%l
:set statusline+=/
:set statusline+=%L]
:set statusline+=\ %{FugitiveStatusline()} 

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
" runtime macros/matchit.vim

" various settings
set autoindent					    " Minimal automatic indenting for any filetype.
set backspace=indent,eol,start 			    " Intuitive backspace behavior.
set hidden                     			    " Possibility to have more than one unsaved buffers.
set incsearch                  			    " Incremental search, hit `<CR>` to stop.
set number                     			    " Show line numbers.
set ruler                      			    " Shows the current line number at the bottom-right
                               			    " of the screen.
set wildmenu                   			    " Great command-line completion, use `<Tab>` to move
                               			    " around and `<CR>` to validate.

set softtabstop=4 shiftwidth=4 noexpandtab	    " Set tab to 4.

" -- Load Plugins --

if filereadable(expand("~/.vim/vimrc.plug"))
    source ~/.vim/vimrc.plug
endif

colorscheme industry 

" --- Emmet Configuration ---

" Remap emmet trigger.
let g:user_emmet_leader_key='<C-Z>'

" Limit emmet file types.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall


let g:user_emmet_settings = {
\ 'variables': {'lang': 'en'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<title></title>\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}

