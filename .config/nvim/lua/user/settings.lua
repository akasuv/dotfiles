vim.opt.background = "dark"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.number = true
vim.cmd.colorscheme("dracula")

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.diagnostic.config({
	virtual_text = false,
})
