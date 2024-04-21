--- This is not a plugin file, this is a lua file i created
-- to help me fix some bugs i faced while using nvim might not work for you can be removed 
--


-- Fix for  statusline disappears a split second after a startup
vim.opt.cmdheight = 1

-- Neorg auto save 
vim.api.nvim_create_autocmd("FileType", {pattern = "norg", command = "set awa"})
vim.opt.conceallevel=3

-- Fixes neovim fold issues 
vim.cmd ([[
augroup remember_folds
  autocmd!
  au BufWinLeave ?* mkview 1
  au BufWinEnter ?* silent! loadview 1
augroup END
]])
