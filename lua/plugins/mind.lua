-- import mind plugin safely
local telescope_setup, mind = pcall(require, "mind")
if not telescope_setup then
	return
end

mind.setup({
	keymaps = {
		normal = {
			e = "open_data",
			E = "open_data_index",
			["<CR>"] = "toggle_node",
			["/"] = "select_path",
			["$"] = "change_icon_menu",
			c = "add_inside_end_index",
			I = "add_inside_start",
			i = "add_inside_end",
			l = "copy_node_link",
			L = "copy_node_link_index",
			d = "delete",
			D = "delete_file",
			O = "add_above",
			o = "add_below",
			q = "quit",
			r = "rename",
			R = "change_icon",
			u = "make_url",
			x = "select",
		},
		selection = {
			["<CR>"] = "move_inside_start",
			["/"] = "select_path",
			I = "move_inside_start",
			i = "move_inside_end",
			O = "move_above",
			o = "move_below",
			q = "quit",
			x = "select",
		},
	},
})
print("Mind configurada")
