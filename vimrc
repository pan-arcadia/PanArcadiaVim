let mapleader  = " "

:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>
:nnoremap <leader>u viwU
:inoremap jk <esc>

" Enabling filetype support provides filetype-specific indenting,
" syntax highlighting, omni-completion and other useful settings.
filetype plugin indent on
syntax on
set termguicolors            " Enable true colors.

:set laststatus=2
" :set statusline=%f\ %y
:set statusline=%f				    " Path to file.
:set statusline+=\ %y				    " Filetype.
:set statusline+=\ [%l
:set statusline+=/
:set statusline+=%L]

" `matchit.vim` is built-in so let's enable it!
" Hit `%` on `if` to jump to `else`.
runtime macros/matchit.vim

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

if filereadable(expand("~/.vim/vimrc.plug"))
    source ~/.vim/vimrc.plug
endif

colorscheme night-owl   " Set colorscheme

