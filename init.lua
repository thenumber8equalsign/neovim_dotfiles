vim.cmd [[so ~/.config/nvim/vimrc]]
if vim.treesitter.get_parser(0) ~= nil then
	vim.treesitter.start()
end
