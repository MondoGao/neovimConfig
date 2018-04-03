augroup modeLoading
	autocmd FileType * call LoadModeFile()
augroup END

function LoadModeFile()

	if &filetype ==? ''
		return
	endif

	let modeFile = fnamemodify(expand("<sfile>"), ':h:p').'/modes/'.&filetype.'.vim'

	if (filereadable(modeFile))
		echomsg 'Loading mode file'.modeFile
		execute 'source' fnamemodify(expand("<sfile>"), ':h:p').'/modes/'.&filetype.'.vim'
	endif
endfunction
" for modeFile in split(glob(fnamemodify(expand("<sfile>"), ':h:p').'/modes/*.vim'))
  " execute 'source' modeFile
" endfor
