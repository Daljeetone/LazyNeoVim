-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<c-F>", "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })
map("n", "<F8>", "<cmd>TagbarToggle<CR>", { desc = "Toggle Tagbar" })

-- Cycle buffer (bufferline) tabs with the same keys the claude-term sidebar
-- uses for its session tabs. BufferLineCycle follows the visual tab order.
-- Normal-mode only, so the sidebar's buffer-local <M-[>/<M-]> maps still win there.
map("n", "<M-]>", "<cmd>BufferLineCycleNext<CR>", { desc = "Next Buffer", silent = true })
map("n", "<M-[>", "<cmd>BufferLineCyclePrev<CR>", { desc = "Prev Buffer", silent = true })
