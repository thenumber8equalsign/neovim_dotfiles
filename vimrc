function ClearWhiteSpace()
	%s/\s\+$//eg
	%s/\n\+\%$//eg
endfunction

function ClangFormat()
	let output = system("clang-format", getline(1, "$"))
	let l = line(".")
	let c = col(".")
	let c = c - 1
	silent %d
	call append(0, split(output, "\n"))
	%s/\n\+\%$//eg
	execute "normal" l .. "G"
	execute "normal" "0"
	if c
		execute "normal" c .. "l"
	endif
endfunction

command! ClangFormat call ClangFormat()
autocmd BufWritePre * call ClearWhiteSpace()

colorscheme slate
highlight Normal guibg=NONE ctermbg=NONE
highlight NonText guibg=NONE ctermbg=NONE

set number
set relativenumber

set clipboard+=unnamedplus

set colorcolumn=81
highlight ColorColumn guibg=darkgray ctermbg=darkgray

set cinoptions+=:0

set ignorecase
set smartcase

let g:python_recommended_style=0

syntax on

hi link @variable Identifier
hi Identifier guifg=#ffffff

set signcolumn=yes
hi SignColumn guibg=NONE ctermbg=NONE
