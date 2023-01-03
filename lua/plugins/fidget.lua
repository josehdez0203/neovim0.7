-- import fidget plugin safely
local setup, fidget = pcall(require, "fidget")
if not setup then
	return
end

-- configure/enable fidget
fidget.setup()
