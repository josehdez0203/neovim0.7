local ok, nightfox = pcall(require, "nightfox")
if not ok then
	print("no se cargo tema", nightfox)
	return
end
require("nightfox").setup({
	options = {
		styles = {
			comments = "italic",
			keywords = "bold",
			types = "italic,bold",
		},
	},
})
vim.cmd("colorscheme duskfox")
-- local tema = require("lualine.themes.material")

-- Change the background of lualine_c section for normal mode
-- custom_gruvbox.normal.c.bg = '#112233'

require("lualine").setup({
	options = { ... },
})
