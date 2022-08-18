vim.cmd([[set number]])

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd([[
   command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
]])

vim.diagnostic.config({
	virtual_text = false,
})
