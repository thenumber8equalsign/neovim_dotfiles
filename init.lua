vim.api.nvim_create_autocmd({ "BufWritePre" }, {
	pattern = { "*" },
	command = [[%s/\s\+$//e]],
})

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

vim.cmd [[
	set colorcolumn=80
	highlight ColorColumn guibg=darkgray
]]
