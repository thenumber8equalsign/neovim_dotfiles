vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

vim.api.nvim_create_user_command('ClangFormat', function()
	local output = vim.fn.system('clang-format', vim.fn.getline(1, '$'))
	vim.fn.setline(1, vim.fn.split(output, '\n'))
end, {})

vim.cmd [[
	colorscheme slate
]]

vim.cmd [[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
]]

vim.cmd [[
	set number
]]

vim.cmd [[
	set clipboard+=unnamedplus
]]

-- the last character should be right before the white bar
vim.cmd [[
	set colorcolumn=81
	highlight ColorColumn guibg=darkgray
]]
