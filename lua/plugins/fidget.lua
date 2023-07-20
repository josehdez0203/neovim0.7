-- import fidget plugin safely
local setup, fidget = pcall(require, "fidget")
if not setup then
	return
end

-- configure/enable fidget
fidget.setup({
	text = {
		spinner = "pipe", -- animation shown when tasks are ongoing
		done = "✔", -- character shown when all tasks are complete
		commenced = "Inicia", -- message shown when task starts
		completed = "Terminado", -- message shown when task completes
	},
})
