-- import hop plugin safely
local setup, _ = pcall(require, "hop")
if not setup then
	return
end
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "f", ":HopChar2<cr>", opts)
