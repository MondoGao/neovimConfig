augroup javascriptMode
	augroup javascriptAbbrs
		autocmd FileType javascript Abolish cosnt const
	augroup end

	augroup javascriptKeymap
		autocmd FileType javascript map <leader>rn :!node %<cr>
		autocmd FileType javascript map <leader>ry :!yarn 
	augroup end

augroup end
