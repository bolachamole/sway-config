vim.opt.number = true
vim.opt.expandtab = false
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"

vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/lewis6991/gitsigns.nvim" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/sainnhe/sonokai" },
})

require('gitsigns').setup()

vim.lsp.enable('clangd')
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})

vim.g.sonokai_style = 'andromeda'
vim.cmd.colorscheme('sonokai')
