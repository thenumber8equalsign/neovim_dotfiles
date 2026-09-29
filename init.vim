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
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE

set number

set clipboard+=unnamedplus

set colorcolumn=81
highlight ColorColumn guibg=darkgray ctermbg=darkgray

set cinoptions+=:0

syntax on
