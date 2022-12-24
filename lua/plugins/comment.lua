-- import comment plugin safely
local setup, comment = pcall(require, "Comment")
if not setup then
	return
end

-- enable comment
comment.setup({
	toggler = {
		line = "<leader>/",
	},
	-- opleader = {
	-- 	line = "/",
	-- },
	pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})
require("nvim-treesitter.configs").setup({
	context_commentstring = {
		enable = true,
		config = {
			javascript = {
				__default = "// %s",
				jsx_element = "{/* %s */}",
				jsx_fragment = "{/* %s */}",
				jsx_attribute = "// %s",
				comment = "// %s",
			},
		},
	},
})
