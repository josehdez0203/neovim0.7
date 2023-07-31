-- import lspsaga safely
local saga_status, saga = pcall(require, "lspsaga")
if not saga_status then
	return
end
local lspsaga = require("lspsaga")
lspsaga.setup({ -- defaults ...
	debug = false,
	use_saga_diagnostic_sign = true,
	-- diagnostic sign
	error_sign = "",
	warn_sign = "",
	hint_sign = "",
	infor_sign = "",
	diagnostic_header_icon = "   ",
	-- code action title icon
	code_action_icon = " ",
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 40,
		virtual_text = true,
	},
	finder_definition_icon = "  ",
	finder_reference_icon = "  ",
	max_preview_lines = 10,
	finder_action_keys = {
		open = "o",
		vsplit = "s",
		split = "i",
		quit = "q",
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	code_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	rename_action_keys = {
		quit = "<C-c>",
		exec = "<CR>",
	},
	definition_preview_icon = "  ",
	border_style = "single",
	rename_prompt_prefix = "➤",
	rename_output_qflist = {
		enable = false,
		auto_open_qflist = false,
	},
	server_filetype_map = {},
	diagnostic_prefix_format = "%d. ",
	diagnostic_message_format = "%m %c",
	highlight_prefix = false,
})
-- saga.setup({
-- keybinds for navigation in lspsaga window
-- move_in_saga = { prev = "<C-k>", next = "<C-j>" },
-- -- use enter to open file with finder
-- finder_action_keys = {
-- 	open = "<CR>",
-- },
-- -- use enter to open file with definition preview
-- definition_action_keys = {
-- 	edit = "<CR>",
-- },
-- symbol_in_winbar = {
-- 	in_custom = true,
-- },
-- diagnostic = {
-- 	max_height = 0.8,
-- 	keys = {
-- 		quit = { "q", "<ESC>" },
-- 	},
-- },
-- })
-- Example:
-- local function get_file_name(include_path)
-- 	local file_name = require("lspsaga.symbolwinbar").get_file_name()
-- 	if vim.fn.bufname("%") == "" then
-- 		return ""
-- 	end
-- 	if include_path == false then
-- 		return file_name
-- 	end
-- 	-- Else if include path: ./lsp/saga.lua -> lsp > saga.lua
-- 	local sep = vim.loop.os_uname().sysname == "Windows" and "\\" or "/"
-- 	local path_list = vim.split(string.gsub(vim.fn.expand("%:~:.:h"), "%%", ""), sep)
-- 	local file_path = ""
-- 	for _, cur in ipairs(path_list) do
-- 		file_path = (cur == "." or cur == "~") and "" or file_path .. cur .. " " .. "%#LspSagaWinbarSep#>%*" .. " %*"
-- 	end
-- 	return file_path .. file_name
-- end
--
-- local function config_winbar_or_statusline()
-- 	local exclude = {
-- 		["terminal"] = true,
-- 		["toggleterm"] = true,
-- 		["prompt"] = true,
-- 		["NvimTree"] = true,
-- 		["help"] = true,
-- 	} -- Ignore float windows and exclude filetype
-- 	if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
-- 		vim.wo.winbar = ""
-- 	else
-- 		local ok, lspsaga = pcall(require, "lspsaga.symbolwinbar")
-- 		local sym
-- 		if ok then
-- 			sym = lspsaga.get_symbol_node()
-- 		end
-- 		local win_val = ""
-- 		win_val = get_file_name(false) -- set to true to include path
-- 		if sym ~= nil then
-- 			win_val = win_val .. sym
-- 		end
-- 		vim.wo.winbar = win_val
-- 		-- if work in statusline
-- 		vim.wo.stl = win_val
-- 	end
-- end
--
-- local events = { "BufEnter", "BufWinEnter", "CursorMoved" }
--
-- vim.api.nvim_create_autocmd(events, {
-- 	pattern = "*",
-- 	callback = function()
-- 		config_winbar_or_statusline()
-- 	end,
-- })
--
-- vim.api.nvim_create_autocmd("User", {
-- 	pattern = "LspsagaUpdateSymbol",
-- 	callback = function()
-- 		config_winbar_or_statusline()
-- 	end,
-- })

-- local saga = require("lspsaga")
-- saga.setup({ -- defaults ...
-- 	debug = false,
-- 	use_saga_diagnostic_sign = true,
-- 	-- diagnostic sign
-- 	error_sign = "",
-- 	warn_sign = "",
-- 	hint_sign = "",
-- 	infor_sign = "",
-- 	diagnostic_header_icon = "   ",
-- 	-- code action title icon
-- 	code_action_icon = " ",
-- 	code_action_prompt = {
-- 		enable = true,
-- 		sign = true,
-- 		sign_priority = 40,
-- 		virtual_text = true,
-- 	},
-- 	finder_definition_icon = "  ",
-- 	finder_reference_icon = "  ",
-- 	max_preview_lines = 10,
-- 	finder_action_keys = {
-- 		open = "o",
-- 		vsplit = "s",
-- 		split = "i",
-- 		quit = "q",
-- 		scroll_down = "<C-f>",
-- 		scroll_up = "<C-b>",
-- 	},
-- 	code_action_keys = {
-- 		quit = "q",
-- 		exec = "<CR>",
-- 	},
-- 	rename_action_keys = {
-- 		quit = "<C-c>",
-- 		exec = "<CR>",
-- 	},
-- 	definition_preview_icon = "  ",
-- 	border_style = "single",
-- 	rename_prompt_prefix = "➤",
-- 	rename_output_qflist = {
-- 		enable = false,
-- 		auto_open_qflist = false,
-- 	},
-- 	server_filetype_map = {},
-- 	diagnostic_prefix_format = "%d. ",
-- 	diagnostic_message_format = "%m %c",
-- 	highlight_prefix = false,
-- })
-- saga.init_lsp_saga({
