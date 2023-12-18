local cmd = vim.cmd

cmd([[
augroup fmt
  autocmd!
  autocmd BufWritePre * Neoformat
augroup END
]])
