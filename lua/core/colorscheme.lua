-- set colorscheme to nightfly with protected call
-- in case it isn't installed
-- local status, _ = pcall(vim.cmd, "colorscheme onedark")
-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
-- local ok, nightfox = pcall(require, "nightfox")
local ok, tema = pcall(require, "gruvbox")
if not ok then
	print("no se cargo tema", tema)
	return
end

local function setup()
	local palettes = {
		all = {},
	}

	local groups = {
		all = {
			CmpItemAbbr = { fg = "fg0" },
			CmpItemAbbrDeprecated = { link = "Error" },
			CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbr" },
			CmpItemKind = { link = "Special" },
		},
	}

	tema.setup({
		options = {
			styles = {
				comments = "italic",
				keywords = "bold",
				types = "italic,bold",
			},
		},
		palettes = palettes,
		groups = groups,
	})

	vim.cmd.colorscheme("gruvbox")
end

return {
	setup = setup,
}
