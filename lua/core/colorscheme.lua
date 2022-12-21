-- local ok, nightfox = pcall(require, "gruvbox-material")
-- if not ok then
-- 	print("no se cargo tema", nightfox)
-- 	return
-- end
-- require('gruvbox-material').setup({
--   options = {
--     styles = {
--       comments = "italic",
--       keywords = "bold",
--       types = "italic,bold",
--     }
--   }
-- })
vim.cmd("colorscheme gruvbox-material")
local tema = require'lualine.themes.gruvbox-material'

-- Change the background of lualine_c section for normal mode
-- custom_gruvbox.normal.c.bg = '#112233'
vim.g.gruvbox_italic=1
vim.g.gruvbox_bold=1

require('lualine').setup {
  options = { theme  = tema },
  ...
}
