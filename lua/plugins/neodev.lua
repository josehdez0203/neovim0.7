local setup, nuevo = pcall(require, "neodev")
if not setup then
	return
end

-- configure/enable neodev
nuevo.setup()
