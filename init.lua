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

vim.api.nvim_create_user_command('StopLSP',
	function(opt)
		vim.lsp.enable(opt.fargs[1], false)
	end,
	{ nargs = 1 }
)

vim.api.nvim_create_user_command('StartLSP',
	function(opt)
		vim.lsp.enable(opt.fargs[1])
	end,
	{ nargs = 1 }
)

vim.lsp.enable('clangd')
vim.lsp.enable('ruff')

vim.diagnostic.enable(true)
