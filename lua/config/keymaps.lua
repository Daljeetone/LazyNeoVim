-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<c-F>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
map("n", "<F8>", "<cmd>TagbarToggle<CR>", { desc = "Toggle Tagbar" })
