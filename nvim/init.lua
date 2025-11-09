vim.opt.number = true
vim.opt.expandtab = false

vim.lsp.enable('clangd')
vim.lsp.enable('pyright')

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
})
