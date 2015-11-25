""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Make/Running/compiling/Test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compiling program
let b:comp_prg ='echo "Compilation program not set for this language..."' 
autocmd FileType c          let b:comp_prg = 'gcc %'
autocmd FileType cpp        let b:comp_prg = 'g++ %'
autocmd FileType cs         let b:comp_prg = 'mcs %' 
autocmd FileType sh         let b:comp_prg = './'.expand("%")
autocmd FileType python     let b:comp_prg = '/usr/bin/env python %'
autocmd FileType fortran    let b:comp_prg = 'gfortran %'
autocmd FileType tex        let b:comp_prg = 'pdflatex -synctex=1 --shell-escape --interaction=nonstopmode % '
" autocmd FileType markdown   let b:comp_prg = 'flavor.rb % >'.expand("%:p:r").".html"
autocmd FileType markdown   let b:comp_prg = 'pandoc -f markdown % >'.expand("%:p:r").".html"
autocmd FileType make       let b:comp_prg = 'make' 
autocmd FileType pascal     let b:comp_prg = 'fpc %' 

" Running program
let b:run_prg ='echo "Running program not set for this language..."' 
autocmd FileType c,cpp      let b:run_prg = './a.out '
autocmd FileType cs         let b:run_prg = expand("%:p:r").'.exe'
autocmd FileType sh         let b:run_prg = './'.expand("%")
autocmd FileType python     let b:run_prg = '/usr/bin/env python %'
autocmd FileType fortran    let b:run_prg = './a.out'
autocmd FileType tex        let b:run_prg = 'evince "'.expand("%:p:r").'.pdf" &'
autocmd FileType markdown   let b:run_prg = 'iceweasel "'.expand("%:p:r").'.html" &'
autocmd FileType make       let b:run_prg = 'make' 
autocmd FileType pascal     let b:run_prg = expand("%:p:r")


" Viewing program
let b:show_prg ='echo "Viewing program not set for this language..."' 
autocmd FileType tex        let b:show_prg = 'evince "'.expand("%:p:r").'.pdf" &'
autocmd FileType markdown   let b:show_prg = 'reload-iceweasel-tab'


" --------------------------------------------------------------------------------
" ---  Mappings 
" --------------------------------------------------------------------------------
" mappings for make and make test(general)
" map <silent> ,m :w<CR>:make<CR><CR>
" The :w will trigger a change that will provoke the make of this file.
" set makeprg=b:comp_prg
map <silent> ,m :make<CR><CR>
noremap <silent> ,te :w<CR>:make test<CR>
" mappings for compilation
noremap <F2> :w<CR>:!<c-r>=b:comp_prg<cr><cr>
" map <F2> :w<CR>:cexpr system('ls -al')
" mappings for run
nnoremap <F4>       :!<c-r>=b:run_prg<cr><cr>
" mappings for viewing
nnoremap <F5>       :!<c-r>=b:show_prg<cr><cr>
 
 " quickfix
map ,n :cnext  <CR>
map ,<S-N> :cprevious  <CR> 

