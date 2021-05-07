"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
"https://github.com/cstrap/monaco-font and http://www.gringod.com/wp-upload/software/Fonts/Monaco_Linux.ttf
set guifont=DEC\ Terminal\ Modern\ 14
set bs=2
set nu " set nonu
set updatetime=100
set history=500
set noequalalways
set autoindent
set splitbelow
set splitright
set smartindent
set noswapfile
set tabstop=3
set shiftwidth=3
set expandtab
set smarttab
set autowrite
set wrap
set ff=unix
set autoread
set wildmenu
set showcmd
set smartcase
set nohlsearch
set ignorecase
set incsearch
set encoding=utf-8
set matchpairs=(:),{:},[:],<:>,':',":"
set noerrorbells
set foldmethod=marker
set ttymouse=xterm2
set mouse=a
set belloff=all
set previewheight=25
syntax enable
set statusline=%<%f%h%m%r%=char=%b=0x%B\ \ %l,%c%V\ %P
"set statusline=\PATH:\ %r%F\ \ \ \ \LINE:\ %l/%L/%P\ TIME:\ %{strftime('%c')}
set t_Co=256
"  set gcr=n-v-c:hor30-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:hor10-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait0-blinkoff150-blinkon175
set guicursor+=a:blinkon0
set printoptions=paper:A4
" set colorcolumn=80
set completeopt-=preview
" set completeopt+=popup
set nocompatible              " be iMproved, required
filetype off                  " required
filetype plugin indent on    " required

"****************************************************************************
"PLUGINS
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/vim-easy-align'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'arcticicestudio/nord-vim'
Plugin 'altercation/vim-colors-solarized'
" Plugin 'enricobacis/vim-airline-clock'
" Plugin 'chrisbra/Colorizer'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'vim-airline/vim-airline'
"Plugin 'alvan/vim-closetag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'ap/vim-css-color'
Plugin 'jiangmiao/auto-pairs'
" Plugin 'lambdalisue/vim-fullscreen'
"Plugin 'lpenz/vimcommander'
Plugin 'cocopon/iceberg.vim'
" Plugin 'rakr/vim-two-firewatch'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jez/vim-better-sml'
" Plugin 'benmills/vimux'
Plugin 'vifm/vifm.vim'
" Plugin 'mhinz/vim-startify'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'rdnetto/YCM-Generator'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vbe0201/vimdiscord'
" Plugin 'Yggdroot/indentLine'
"for full screen ```sudo apt-get install wmctrl``` " For gvim

call vundle#end()

"****************************************************************************
" setting for vim-startify
let g:startify_custom_header = [
         \ '                            • ▌ ▄ ·. ▄▄▄      ▄▄·        ▐ ▄  ▌ ▐·▪   ▄▄· ▄▄▄▄▄',
         \ '                            ·██ ▐███▪▀▄ █·   ▐█ ▌▪▪     •█▌▐█▪█·█▌██ ▐█ ▌▪•██     ',
         \ '                            ▐█ ▌▐▌▐█·▐▀▀▄    ██ ▄▄ ▄█▀▄ ▐█▐▐▌▐█▐█•▐█·██ ▄▄ ▐█.▪      ',
         \ '                            ██ ██▌▐█▌▐█•█▌   ▐███▌▐█▌.▐▌██▐█▌ ███ ▐█▌▐███▌ ▐█▌·       ',
         \ '                            ▀▀  █▪▀▀▀.▀  ▀ ▀ ·▀▀▀  ▀█▄▀▪▀▀ █▪. ▀  ▀▀▀·▀▀▀  ▀▀▀       ',
         \ '       \    / _  |  _  _  ._ _   _   _  \  / _        _|_  _    |_|  _.  _ |   _  ._ / _   | \  _  ._          ',
         \ '        \/\/ (/_ | (_ (_) | | | (/_ _>   \/ (_) |_|    |_ (_)   | | (_| (_ |< (/_ |   _>   |_/ (/_ | |         ',
         \ '      ___________________________________/_____________________________________________________________        ',
         \ ]

let g:startify_bookmarks = [ {'myfiles': '/home/convict/Dropbox/myfiles/'},
         \ {'sport_coding': '/home/convict/Dropbox/myfiles/sport_coding'},
         \ {'bashscripts': '/home/convict/Dropbox/myfiles/bashscripts'},
         \ {'Educational CF': '/home/convict/Dropbox/myfiles/sport_coding/educational_cf'},
         \ {'Projects': '/home/convict/Dropbox/myfiles/projects'},
         \ ]

let g:startify_lists = [
         \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
         \ { 'type': 'files',     'header': ['   MRU']            },
         \ { 'type': 'commands',  'header': ['   Commands']       },
         \ ]

let g:startify_files_number = 5

"****************************************************************************
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"', '```':'```', '"""':'"""', "'''":"'''"}

"****************************************************************************
" vim-markdown settings
autocmd FileType markdown normal zR
autocmd FileType markdown set conceallevel=0
autocmd FileType markdown set textwidth=80
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_math = 1

let g:indent_guides_guide_size=1

"****************************************************************************
"Colorschemes
hi clear

highlight Pmenu ctermbg=black ctermfg=lightgray
hi IndentGuidesOdd  guibg=gray ctermbg=gray
hi IndentGuidesEven guibg=lightgray ctermbg=lightgray

" set background=dark
set background=light
" colorscheme jellybeans
" set background=light
" colorscheme iceberg
" colorscheme peachpuff
" colorscheme two-firewatch
" colorscheme zellner
" colorscheme atom-dark-256
" colorscheme autumnleaf_modified
" colorscheme farNoBold
" colorscheme breezy
" colorscheme Tomorrow
" colorscheme farNoBold

colorscheme PaperColor

autocmd BufRead,BufNewFile,BufEnter * syn match parens /[\[\](){}]/ | hi parens guifg=black ctermfg=black cterm=bold gui=bold
"****************************************************************************

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

"****************************************************************************
" cpp highlighter settings
let g:cpp_concepts_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_scope_highlight = 1

"****************************************************************************
" Very important YCM keybindings and settings
autocmd filetype cpp,c,cc,hpp,h nnoremap <leader>gt :split \| YcmCompleter GoTo<CR>
autocmd filetype cpp,c,cc,hpp,h nnoremap <leader>gg :vsplit \| YcmCompleter GoTo<CR>
" autocmd filetype cpp,c,cc,hpp,h nnoremap <S-f> :YcmCompleter GoTo<CR>
autocmd filetype cpp,c,cc,hpp,h nnoremap <S-f> :tab split \| YcmCompleter GoTo<CR>
autocmd filetype cpp,c,cc,hpp,h nnoremap <C-f> :YcmCompleter GoToReferences<CR>

let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:syntastic_always_populate_loc_list = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:YcmForceCompileAndDiagnostics = 1
let g:ycm_always_populate_location_list = 1
let g:ycm_auto_trigger = 1
let g:ycm_enable_diagnostic_signs = 0
" let g:syntastic_mode="passive"
" let g:clang_snippets_engine='clang_complete'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>>'
hi YcmWarningSection cterm=underline,bold
hi YcmErrorSection cterm=underline,bold

"****************************************************************************
" Tabbar settings
let g:tagbar_width=35
nnoremap <leader>tag :TagbarToggle<CR>

"nnoremap <C-g> :NERDTreeFocus<CR>
" CtrlP settings
nnoremap <space> :CtrlPCurFile<CR>
let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
"  let g:ctrlp_custom_ignore = '.viminfo\|*.exe\|*.out'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|out)$'
  \ }

"****************************************************************************
" Syntastic settings
let g:syntastic_java_checkers = []

"****************************************************************************
" Airline settings
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1

"let g:airline_theme='atomic'
"let g:airline_theme='base16color'
"let g:airline_theme='minimalist'
" let g:airline_theme='tomorrow'
let g:airline_theme='iceberg'
map <S-m> :NERDTreeToggle<CR>
function! AirlineInit()
   let g:airline_section_z = airline#section#create(['clock', g:airline_symbols.space, g:airline_section_z])
endfunction
autocmd User AirlineAfterInit call AirlineInit()

"****************************************************************************
" vimspector settings
packadd! vimspector

hi SpellBad ctermbg=black ctermfg=white cterm=bold,underline
hi SpellCap ctermbg=black ctermfg=white cterm=bold,underline
" setlocal statusline=%{countdown#get()} | call countdown#set(4500)
"
"****************************************************************************
"Man pages for cpp inside vim
autocmd FileType cpp set keywordprg=cppman "sudo apt-get install cppman

"****************************************************************************
" competitive programming specific
" Run tester
autocmd filetype cpp,java,python,haskell nnoremap <C-c> :lcd %:p:h <bar> silent call RunTester()<CR><C-l>
" Run GDB
auto filetype c,cpp nnoremap <leader>gd :lcd %:p:h <bar> silent call RunGDB()<CR><C-l>
" Random run
autocmd filetype cpp nnoremap <leader>rn :lcd %:p:h <bar> silent !cd %:p:h && tmux split-window "cp-random %"<CR><C-l>
" CF Submit
autocmd filetype cpp nnoremap <F5> :lcd %:p:h <bar> !rm -rfv a.out && clear && clear && g++ -std=gnu++17 -Wall -Wextra -Wshadow -Wfloat-equal -fmax-errors=1 -Wconversion -Wshift-overflow=2 -Wduplicated-cond -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=signed-integer-overflow -fsanitize=bounds -DCONVICTION -O2 % && ulimit -s 256000 && echo "Compiled" && time ./a.out
" auto filetype cpp nnoremap <F6> :lcd %:p:h <bar> silent call Cpcfsubmit()<CR><C-l>
" CF Open problem set
auto filetype cpp nnoremap <F7> :lcd %:p:h <bar> silent call CpcfopenSet()<CR><C-l>
" CF Open specific problem
auto filetype cpp nnoremap <F8> :lcd %:p:h <bar> silent call Cpcfopen()<CR><C-l>
" Custom compile and run
autocmd filetype c,cpp nnoremap ; :read ~/Dropbox/myfiles/sport_coding/cplib/snippets/
nnoremap ; :read ~/Dropbox/myfiles/sport_coding/cplib/snippets/
nnoremap <C-b> :cd %:p:h <bar> call AddTestCase()<CR>
nnoremap <leader>t :call ShowTestCase()<CR>
" nnoremap <C-f> :call SearchWord()<CR>
autocmd filetype c,cpp nnoremap <F12> :lcd %:p:h <bar> call Cpcfsubmit()<CR>
" nnoremap <S-CR> i<CR><Esc> " Needed for GVIm
autocmd filetype c,cpp nnoremap <leader>ln :lnext<CR>
nnoremap <leader>ad :let @+=expand("%:p") <bar> echo expand("%:p")<CR>
nnoremap <leader>bd :call KillAll()<CR>
nnoremap <leader>cc :call CommitIt()

" Gnome-terminal alternatives for the above commands
" autocmd filetype cpp nnoremap <leader>rn :!gnome-terminal -e 'sh -c "cd %:p:h && random_run %; exec bash"'<CR>
" autocmd filetype cpp,java,python,haskell nnoremap <C-x> :lcd %:p:h <bar> !gnome-terminal --tab -e 'sh -c "cd %:p:h && cp-tester % 3 C"' && clear

"****************************************************************************
"Compilers
" autocmd BufEnter * silent! lcd %:p:h

" Other Languages
autocmd filetype sml nnoremap <C-x> :!clear && clear && sml %
autocmd fileType rust nnoremap <C-x> :!clear && clear && rustc % -o a.out && ./a.out
autocmd filetype haskell nnoremap <C-x> :!clear && clear && ghci %
autocmd filetype javascript nnoremap <C-c> :!clear && node %
autocmd filetype html nnoremap <C-c> :!google-chrome %<CR>
autocmd filetype perl nnoremap <C-c> :w <bar> !perl % <CR>
autocmd filetype go nnoremap <C-c> :w <bar> !go build % && ./%:p <CR>
autocmd filetype sh nnoremap <C-c> :!clear && clear && sudo chmod +x % && ./%<CR>
autocmd filetype markdown nnoremap <C-c> :!clear && pandoc --number-sections --toc --highlight-style tango --variable urlcolor=blue -V geometry:"top=2cm, bottom=1.5cm, left=2cm, right=2cm" -o %:t:r.pdf % && evince %:t:r.pdf

" autocmd fileType haskell nnoremap <C-c> :!clear && clear && ghc --make %
" autocmd filetype java nnoremap <C-c> :w <bar> !clear && clear && javac % && time java -enableassertions %:t:r < in
"
"****************************************************************************
" Easy Comments Key bindings
autocmd filetype c,cpp vmap <S-c> :s/^/\/\/ /g<CR>
autocmd filetype asm,py,sh vmap <S-c> :s/^/# /g<CR>
autocmd filetype asm,py,sh vmap <S-x> :s/^# //g<CR>
autocmd filetype c,cpp vmap <S-x> :s/^\/\/ //g<CR>

"****************************************************************************
" Useful Bindings for quick movement
nnoremap ,<Up>   :<C-u>silent! move-2<CR>==
nnoremap ,<Down> :<C-u>silent! move+<CR>==
nnoremap { 8k
nnoremap } 8j
nnoremap <C-e> 8<C-e>
nnoremap <C-y> 8<C-y>

" Useful Binding for better workflow
nnoremap <C-j> :tabNext<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
" Run the previous command on terminal
nnoremap <S-l> :exe "!!"<CR>
" Paste from clipboard
nnoremap <F2> :normal "+gP<CR>"
nnoremap <F3> :call VimDiff(

"****************************************************************************
" Some other important stuffs

" Pop-up a Python interpreter
autocmd filetype cpp nnoremap <C-p> :terminal python3<CR>

" autocmd filetype c,cpp nnoremap <F6> :lcd %:p:h <bar> !clear && clear && valgrind --leak-check=full --show-leak-kinds=all ./a.out
" nnoremap <S-F6> :ha > %:t:r <bar> !ps2pdf %:t:r && rm -rf %:t:r && xournal %:t:r.pdf<CR>

nnoremap <F4> :SyntasticToggleMode<CR>
nnoremap <S-F9> :call SelectRandomAirlineTheme()<CR>
nnoremap <F10> :source ~/.vimrc

" tabularize comments
vmap <S-t> :Tabularize /\/\/<CR>

" This shit was causing lot of bugs. *NOTE* <C-x> decrements a number, so map
" it to just save the file
map <C-x> :w<CR>

"Cursor retains the position
autocmd BufReadPost *
         \ if line("'\"") > 0 && line("'\"") <= line("$") |
         \   exe "normal! g`\"" |
         \ endif
"Removes trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e
nnoremap <C-g> :lcd %:p:h <bar> Vifm<CR>
nnoremap <C-d> :lcd %:p:h <bar> terminal<CR>

" Create a copy
set printfont=Monospace:h7
command! -range=% HardcopyPdf <line1>,<line2> hardcopy > %.ps | !ps2pdf %.ps && rm %.ps && xournalpp %.pdf &
"****************************************************************************
"templates and other Buffer features
if has("autocmd")
   augroup templates_"
      autocmd BufEnter * silent! lcd %:p:h | call ChangeDirTmux()
      autocmd BufEnter .anvimrc,.vimrc,*.vim,*.cpp,*.c,*.hpp,*.h,*.cc,*.java,*.py,*.sml,*.hs :TagbarOpen
      autocmd BufEnter *.exe,*.out !xterm -fn 10x20 -e "./%; read"
      autocmd BufEnter input*,output*,my_output* set nonu
      autocmd BufEnter *.jar !xterm -e "java -jar %; read"
      autocmd BufNewFile *.cpp 0r ~/Dropbox/myfiles/sport_coding/cplib/templates/temp.cpp
      autocmd BufNewFile *.java 0r ~/Dropbox/myfiles/sport_coding/cplib/templates/temp.java
      autocmd BufNewFile *.asm 0r ~/Dropbox/myfiles/mips/temp.asm
      autocmd BufNewFile *.cc 0r ~/temp.cc
      autocmd BufNewFile *.c 0r ~/temp.c
      autocmd BufNewFile *.html 0r ~/temp.html
      autocmd BufWrite *.sql %y+
      au BufRead,BufNewFile *.spl set filetype=spl
   augroup END
endif

"/****************************************************************************/
" Competitive programming related custom function
function! Mrconvict()
   silent exec '0r ~/Dropbox/myfiles/sport_coding/cplib/templates/mrconvict.cpp'
   exec '%y+'
   exec 'w'
   exec '!clear && clear && yank_to_submit % 3'
   silent exec '1,8d | w'
endfunction

" Santization checks and submit
function! SearchWord()
   exec 'lcd %:p:h'
   let token = input ('Enter token: ')
   let grep_query = "grep -F \"" . token . "\" **/**.*"
   exec grep_query
   exec 'botright copen'
endfunction

function! ShowTestCase()
   if empty(glob("input1"))
      echo "No Test cases found"
   else
      let mxIdx = 1
      while !empty(glob("input".mxIdx))
         let mxIdx += 1
      endwhile
      let curIdx = GetInputIdx()
      if (curIdx == -1)
         exec '15sp my_output1 | aboveleft vsplit output1 | aboveleft vsplit input1'
      else
         let curIdx += 1
         let curIdx = (curIdx % mxIdx)
         if (curIdx == 0)
            let curIdx += 1
         endif
         exec 'bd! | bd! | bd! | 15sp my_output' . curIdx . ' | aboveleft vsplit output' . curIdx ' | aboveleft vsplit input' . curIdx
      endif
   endif
endfunction

function! AddTestCase()
   let filename = expand("%:t:r")
   let fileNameRegExInput = matchstr(filename, 'input*')
   let fileNameRegExOutput = matchstr(filename, 'output*')
   if (!empty(fileNameRegExOutput))
      exec 'wq | wq'
   elseif (!empty(fileNameRegExInput))
      exec 'q | q'
   else
      let index = 1
      while !empty(glob("input".index))
         let index += 1
      endwhile
      exec '15sp output' . index . ' | aboveleft vsplit input' . index
      "normal "+gP<CR>"
   endif
endfunction

function! Cpcfsubmit()
   exec '%y+'
   exec '!clear && clear && yank_to_submit % 3'
   let confirmf = input ('Submit? (y/n): ')
   if (confirmf != 'n')
      exec '!cd %:p:h && echo ''{''\"filename\":\"$(pwd)/%\", \"submit\":\"0\", \"pconfig\":$(cat pconfig.json)''}'' | nc -uw 1 localhost 8889'
   endif
endfunction

function! CpcfopenSet()
   exec '!clear && clear && echo "Opening complete problem set..."'
   exec '!cd %:p:h && echo ''{''\"filename\":\"$(pwd)/%\", \"submit\":\"1\", \"pconfig\":$(cat pconfig.json)''}'' | nc -uw 1 localhost 8889'
endfunction

function! Cpcfopen()
   exec '!clear && clear && echo "Opening problem..."'
   exec '!cd %:p:h && echo ''{''\"filename\":\"$(pwd)/%\", \"submit\":\"2\", \"pconfig\":$(cat pconfig.json)''}'' | nc -uw 1 localhost 8889'
endfunction

function! VimDiff(i)
   exec '!vimdiff output' . a:i.' my_output' . a:i. ' '
endfunction

function! ChangeDirTmux()
   silent exec '!tmux send-key -t 0:cp.0 C-m'
   silent exec '!tmux send-keys -t 0:cp.0 " cd %:p:h && clear" Enter'
   silent exec 'redraw!'
endfunction

function! RunTester()
   silent exec '!tmux send-keys -t 0:cp.0 C-m'
   silent exec '!tmux send-keys -t 0:cp.0 " clear && cp-tester % 3 C" Enter'
   silent exec 'redraw!'
endfunction

function! RunGDB()
   silent exec 'TagbarClose'
   silent exec '!cd %:p:h && tmux split-window -h "rm -rfv a.out && clear && clear && g++ -std=gnu++17 -Wall -ggdb3 -Wextra -Wshadow -Wfloat-equal -fmax-errors=1 -Wconversion -Wshift-overflow=2 -Wduplicated-cond -D_GLIBCXX_DEBUG -D_GLIBCXX_DEBUG_PEDANTIC -D_FORTIFY_SOURCE=2 -fsanitize=signed-integer-overflow -fsanitize=bounds -Og % && ulimit -s 256000 && gdb a.out -ex \"dashboard -layout assembly expressions memory threads history stack source variables\""'
   silent exec 'redraw!'
endfunction

function! GetInputIdx()
   let filename = expand("%:t:r")
   let fileNameRegExInput = matchstr(filename, 'input*')
   let fileNameRegExOutput = matchstr(filename, 'output*')
   let fileNameRegExMyOutput = matchstr(filename, 'my_output*')

   if (!empty(fileNameRegExInput))
      let index = 1
      let guessFilename = 'input' . index
      while empty(matchstr(filename, guessFilename))
         let index += 1
         let guessFilename = 'input'. index
      endwhile
      return index
   elseif (!empty(fileNameRegExOutput))
      let index = 1
      let guessFilename = 'output' . index
      while empty(matchstr(filename, guessFilename))
         let index += 1
         let guessFilename = 'output'. index
      endwhile
      return index
   elseif (!empty(fileNameRegExMyOutput))
      let index = 1
      let guessFilename = 'my_output' . index
      while empty(matchstr(filename, guessFilename))
         let index += 1
         let guessFilename = 'my_output'. index
      endwhile
      return index
   else
      return -1
   endif
endfunction
"/****************************************************************************/
"Menu and Toolbar toggle
"
function! ToggleGUICruft()
   if &guioptions=='i'
      exec('set guioptions=imTrL')
   else
      exec('set guioptions=i')
   endif
endfunction

map <F11> <Esc>:call ToggleGUICruft()<cr>

" by default, hide gui menus
set guioptions=i

"/****************************************************************************/
" A function to return random number in the range [Low, High)
function! RandInt(Low, High) abort
    let l:milisec = str2nr(matchstr(reltimestr(reltime()), '\v\.\zs\d+'))
    return l:milisec % (a:High - a:Low + 1) + a:Low
 endfunction

"Commit to git
function! CommitIt()
  exec '!clear && git diff %'
  let msg = input ('Commit Msg: ')
  let confirm = input ('Are you sure want to commit with this msg? (y/n): ')
  let op = "!git add % && git commit -m \"" . msg .  "\""
  if confirm == 'y'
    exec op
  endif
endfunction

" Clears buffer
function! KillAll()
   let file = expand("%:p")
   exec 'bufdo bd'
   exec 'e' . file
endfunction

" Refreshes Tagbar
function! MyTagbarRefresh()
   exec 'TagbarToggle'
   exec 'TagbarToggle'
endfunction

"/****************************************************************************/
" Some 'I don't know why I kept them here' functions

let s:term_buf = 0
let s:term_win = 0

function! TermToggle(height)
   if win_gotoid(s:term_win)
      hide
   else
      new terminal
      exec "resize ".a:height
      try
         exec "buffer ".s:term_buf
         exec "bd terminal"
      catch
         call termopen($SHELL, {"detach": 0})
         let s:term_buf = bufnr("")
         setlocal nonu nornu scl=no nocul
      endtry
      startinsert!
      let s:term_win = win_getid())
   endif
endfunction"

""not my functions
function! MarkWindowSwap()
   let g:markedWinNum = winnr()
endfunction

function! DoWindowSwap()
   "Mark destination
   let curNum = winnr()
   let curBuf = bufnr( "%" )
   exe g:markedWinNum . "wincmd w"
   "Switch to source and shuffle dest->source
   let markedBuf = bufnr( "%" )
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' curBuf
   "Switch to dest and shuffle source->dest
   exe curNum . "wincmd w"
   "Hide and open so that we aren't prompted and keep history
   exe 'hide buf' markedBuf
endfunction

nmap <silent> <leader>mw :call MarkWindowSwap()<CR>
nmap <silent> <leader>pw :call DoWindowSwap()<CR>

function! IndentLinesToggle()
   exec 'IndentGuidesToggle'
   autocmd BufRead,BufNewFile,BufEnter * syn match parens /[\[\](){}]/ | hi parens guifg=black ctermfg=black cterm=bold gui=bold
endfunction


function! My_Tab_Completion()
   if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
      return "\<C-P>"
   else
      return "\<Tab>"
   endif
endfunction
inoremap <Tab> <C-R>=My_Tab_Completion()<CR>

au Filetype perl set filetype=prolog
set cursorline
" hi Cursorline cterm=bold ctermbg=8
"set cursorcolumn
"hi CursorColumn ctermbg=8
"
function! CloseAllBuffersButCurrent()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction
"/****************************************************************************/
" Experimenting with Airline

let s:candidate_airlinetheme = ['alduin', 'angr', 'atomic', 'ayu_dark', 'ayu_light', 'ayu_mirage', 'badwolf', 'base16_3024', 'base16_adwaita', 'base16_apathy', 'base16_ashes', 'base16_atelierdune', 'base16_atelierforest', 'base16_atelierheath', 'base16_atelierlakeside', 'base16_atelierseaside', 'base16_bespin', 'base16_brewer', 'base16_bright', 'base16_chalk', 'base16_classic', 'base16_codeschool', 'base16_colors', 'base16color', 'base16_default', 'base16_eighties', 'base16_embers', 'base16_flat', 'base16_google', 'base16_grayscale', 'base16_greenscreen', 'base16_gruvbox_dark_hard', 'base16_harmonic16', 'base16_hopscotch', 'base16_isotope', 'base16_londontube', 'base16_marrakesh', 'base16_mocha', 'base16_monokai', 'base16_nord', 'base16_oceanicnext', 'base16_ocean', 'base16_paraiso', 'base16_pop', 'base16_railscasts', 'base16_seti', 'base16_shapeshifter', 'base16_shell', 'base16_snazzy', 'base16_solarized', 'base16_spacemacs', 'base16_summerfruit', 'base16_tomorrow', 'base16_twilight', 'base16', 'base16', 'behelit', 'biogoo', 'bubblegum', 'cobalt2', 'cool', 'dark_minimal', 'desertink', 'deus', 'distinguished', 'durant', 'fairyfloss', 'fruit_punch', 'hybridline', 'hybrid', 'jellybeans', 'jet', 'kalisi', 'kolor', 'laederon', 'light', 'lucius', 'luna', 'minimalist', 'molokai', 'monochrome', 'murmur', 'night_owl', 'onedark', 'ouo', 'owo', 'papercolor', 'peaksea', 'powerlineish', 'qwq', 'ravenpower', 'raven', 'seagull', 'seoul256', 'serene', 'sierra', 'silver', 'simple', 'soda', 'solarized_flood', 'solarized', 'sol', 'term_light', 'term', 'tomorrow', 'ubaryd', 'understated', 'violet', 'wombat', 'xtermlight', 'zenburn']


function! SelectRandomAirlineTheme()
   let s:idx=RandInt(0, len(s:candidate_airlinetheme) - 1)
   let s:theme=s:candidate_airlinetheme[s:idx]
   exec 'AirlineTheme '. s:theme
endfunction
"/****************************************************************************/

