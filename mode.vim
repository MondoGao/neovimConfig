augroup modeLoading
	autocmd FileType * call LoadModeFile()
augroup END

function LoadModeFile()

	if &filetype ==? ''
		return
	endif

	let modeFile = g:configFolder.'/modes/'.&filetype.'.vim'

	if (filereadable(modeFile))
		echo 'Loading mode file '.modeFile
		execute 'source' modeFile
	endif
endfunction
" for modeFile in split(glob(fnamemodify(expand("<sfile>"), ':h:p').'/modes/*.vim'))
  " execute 'source' modeFile
" endfor
