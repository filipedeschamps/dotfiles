" Author: Filipe Deschamps
" Source: https://github.com/filipedeschamps/dotfiles

" # GENERAL SETTINGS

" ## COMPATIBILITY
" ## Set 'nocompatible' to avoid unexpected things that your distro might have
set nocompatible

" ## SYNTAX
" ## Enable syntax highlighting
syntax on

" ## SEARCH
" ## Highlight search term. Use :nohl to redraw screen and disable highlight
set hlsearch

" ## Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" ## AUTO IDENTATION
" ## Enable auto identation with 'spaces' instead of 'tabs'
set smartindent
set expandtab
set softtabstop=4
set shiftwidth=4

" ## MOVING BETWEEN FILES
" ## Set 'hidden' if you want to open a new file inside the same buffer without the
" ## need to save it first (if there's any unsaved changes).
set hidden

" ## REMEMBER THIGS
" ## Tell vim to remember certain things when we exit
" ##  '10  :  marks will be remembered for up to 10 previously edited files
" ##  "100 :  will save up to 100 lines for each register
" ##  :20  :  up to 20 lines of command-line history will be remembered
" ##  %    :  saves and restores the buffer list
" ##  n... :  where to save the viminfo files
set viminfo='10,\"100,:20,%,n~/.viminfo

function! ResCur()
  if line("'\"") <= line("$")
    normal! g`"
    return 1
  endif
endfunction

augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END
