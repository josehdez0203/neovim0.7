-- import emoji safely
local autopairs_setup, cmp = pcall(require, "cmp")
if not autopairs_setup then
	return
end

cmp.setup({
	sources = {
		{ name = "emoji" },
	},
})
