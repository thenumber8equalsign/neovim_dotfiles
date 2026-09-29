vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	callback = function()
		vim.cmd [[
			%s/\s\+$//e
			%s/\n\+\%$//e
		]]
	end
})

vim.api.nvim_create_user_command('ClangFormat', function()
	local output = vim.fn.system('clang-format', vim.fn.getline(1, '$'))
	vim.fn.setline(1, vim.fn.split(output, '\n'))
end, {})

vim.cmd [[
	colorscheme slate
	highlight Normal guibg=none ctermbg=none
	highlight NonText guibg=none ctermbg=none

	set number

	set clipboard+=unnamedplus

	set colorcolumn=81
	highlight ColorColumn guibg=darkgray ctermbg=darkgray
	set cinoptions+=:0
]]
