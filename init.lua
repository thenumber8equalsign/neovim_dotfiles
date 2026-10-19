vim.cmd([[so ~/.config/nvim/vimrc]])

vim.filetype.add({
	extension = {
		h = 'c', -- for some dumbass reason .h is c++ by default???
	},
	filename = {
		['~/.bashrc'] = 'bash',
	},
})

vim.api.nvim_create_autocmd('BufEnter', {
	callback = function(ev)
		pcall(vim.treesitter.start)
	end,
})

vim.lsp.enable('clangd')
vim.lsp.enable('ruff')

vim.diagnostic.enable(true)
