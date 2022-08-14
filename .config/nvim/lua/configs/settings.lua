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

vim.cmd([[
	nmap <silent> <C-D> :NERDTreeToggle<CR>
]])

vim.cmd([[
	" Find files using Telescope command-line sugar.
	nnoremap <leader>ff <cmd>Telescope find_files<cr>
	nnoremap <leader>fg <cmd>Telescope live_grep<cr>
	nnoremap <leader>fb <cmd>Telescope buffers<cr>
	nnoremap <leader>fh <cmd>Telescope help_tags<cr>
]])

vim.diagnostic.config({
	virtual_text = false,
})
