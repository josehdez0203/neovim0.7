-- import hop plugin safely
local setup, _ = pcall(require, "hop")
if not setup then
	return
end
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
map("n", "s", ":HopChar2<cr>", opts)
require("hop").setup({
	upercase_labels = true,
	keys = "asdfghjklqwertyuiop",
})
