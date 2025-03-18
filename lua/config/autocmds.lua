-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "javascript,typescript,css,html,javascriptreact,typescriptreact,lua",
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.softtabstop = 2
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "python",
  callback = function()
    vim.opt.shiftwidth = 4
    vim.opt.tabstop = 4
    vim.opt.softtabstop = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "go",
  callback = function()
    vim.opt.shiftwidth = 6
    vim.opt.tabstop = 6
    vim.opt.softtabstop = 6
    vim.opt.expandtab = false -- Go usa tabs en lugar de espacios
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "cpp,c",
  callback = function()
    vim.opt.shiftwidth = 6
    vim.opt.tabstop = 6
    vim.opt.softtabstop = 6
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = "rust",
  callback = function()
    vim.opt.shiftwidth = 6
    vim.opt.tabstop = 6
    vim.opt.softtabstop = 6
  end,
})
