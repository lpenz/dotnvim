" MiniBufExplorer configuration and shortcuts

fu! MBTOn()
	nnoremap <silent> <F8> :call MBTOff()<CR>
	let g:miniBufExplorerMoreThanOne=0
	TMiniBufExplorer
	norm
	nnoremap <buffer> <CR> :call LPenzMBESelectBuffer()<CR>:call MBTOff()<CR>:<BS>
endf
fu! MBTOff()
	nnoremap <silent> <F8> :call MBTOn()<CR>
	let g:miniBufExplorerMoreThanOne=99
	TMiniBufExplorer
endf
let g:miniBufExplVSplit = 40   " column width in chars
let g:miniBufExplorerMoreThanOne=99
let g:bufExplorerSplitType='v'
let g:explHideFiles='^\.'
let g:TE_Exclude_Dir_Pattern = '\.deps\|dox'

nnoremap <silent> <F8> :call MBTOn()<CR>

