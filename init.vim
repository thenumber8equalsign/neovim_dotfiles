function ClearWhiteSpace()
	%s/\s\+$//e
	%s/\n\+\%$//e
endfunction

function ClangFormat()
	let output = system("clang-format", getline(1, "$"))
	call setline(1, split(output, '\n'))
endfunction

command! ClangFormat call ClangFormat()
autocmd BufWritePre * call ClearWhiteSpace()

colorscheme slate
highlight Normal guibg=none ctermbg=none
highlight NonText guibg=none ctermbg=none

set number

set clipboard+=unnamedplus

set colorcolumn=81
highlight ColorColumn guibg=darkgray ctermbg=darkgray

set cinoptions+=:0
