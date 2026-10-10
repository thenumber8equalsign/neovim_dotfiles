vim.cmd [[so ~/.config/nvim/vimrc]]

-- for some dumbass reason .h is c++ by default???
vim.filetype.add {
	pattern = {
		['.*/*.h'] = 'c'
	}
}

vim.api.nvim_create_autocmd('BufEnter', {
	callback = function(ev)
		pcall(vim.treesitter.start)
	end,
})
