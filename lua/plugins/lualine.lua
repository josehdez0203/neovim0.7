-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
	return
end

-- get lualine nightfly theme
local tema = require("lualine.themes.nightfly")
-- lualine gruvbox theme
-- local tema = require("lualine.themes.gruvbox")

-- new colors for theme
local new_colors = {
	blue = "#0d72b7",
	green = "#234f1e",
	violet = "#704292",
	yellow = "#Fcb449",
	black = "#222222",
}

-- -- change nightlfy theme colors
tema.normal.a.bg = new_colors.blue
tema.insert.a.bg = new_colors.green
tema.visual.a.bg = new_colors.violet
tema.command = {
	a = {
		gui = "bold",
		bg = new_colors.yellow,
		fg = new_colors.black, -- black
	},
}

-- configure lualine with modified theme
lualine.setup({
	options = {
		theme = tema,
	},
})
