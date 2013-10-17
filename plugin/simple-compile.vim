""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""" Make/Running/compiling/Test
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Compiling program
let b:comp_prg ='echo "Compilation program not set for this language..."' 
autocmd FileType c,cpp      let b:comp_prg = 'gcc %'
autocmd FileType sh         let b:comp_prg = './'.expand("%")
autocmd FileType python     let b:comp_prg = '/usr/bin/env python %'
autocmd FileType fortran    let b:comp_prg = 'gfortran %'
autocmd FileType tex        let b:comp_prg = 'pdflatex -synctex=1 --shell-escape --interaction=nonstopmode % '
autocmd FileType markdown   let b:comp_prg = 'flavor.rb % >'.expand("%:p:r").".html"
autocmd FileType make       let b:comp_prg = 'make' 

" Running program
let b:run_prg ='echo "Running program not set for this language..."' 
autocmd FileType c,cpp      let b:run_prg = './a.out '
autocmd FileType sh         let b:run_prg = './'.expand("%")
autocmd FileType python     let b:run_prg = '/usr/bin/env python %'
autocmd FileType fortran    let b:run_prg = './a.out'
autocmd FileType tex        let b:run_prg = "evince ".expand("%:p:r").'.pdf'
autocmd FileType markdown   let b:run_prg = 'iceweasel '.expand("%:p:r").'.html'
autocmd FileType make       let b:run_prg = 'make' 


" Viewing program
let b:show_prg ='echo "Viewing program not set for this language..."' 
autocmd FileType tex        let b:show_prg = "evince ".expand("%:p:r").'.pdf'
autocmd FileType markdown   let b:show_prg = 'reload-iceweasel-tab'


" --------------------------------------------------------------------------------
" ---  Mappings 
" --------------------------------------------------------------------------------
" mappings for make and make test(general)
map <silent> ,m :w<CR>:!make<CR><CR>
noremap <silent> ,te :w<CR>:!make test<CR>
" mappings for compilation
map <F2> :w<CR>:!<c-r>=b:comp_prg<cr><cr>
" mappings for run
map <F4>       :!<c-r>=b:run_prg<cr><cr>
" mappings for viewing
map <F5>       :!<c-r>=b:show_prg<cr><cr>
 
 " quickfix
map ,n :cnext  <CR>
map ,<S-N> :cprevious  <CR> 

