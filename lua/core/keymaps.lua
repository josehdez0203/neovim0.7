-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness
local map = vim.api.nvim_set_keymap --for conciseness
local opts = { noremap = true, silent = true }
---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
keymap.set("n", "<C-c>", ":<C-w>q<cr>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

----------------------
-- Plugin Keybinds
----------------------
-- nvim-tree
--Abrir navegador y buscar en archivo en arbol
map("n", "<F3>", ":NvimTreeToggle<CR>", { noremap = true, silent = false })
map("n", "<F7>", ":NvimTreeFindFile<CR>", { noremap = true, silent = false })
--Indentacion
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
--Mostrar/ocultar barra de cambios
map("n", "<F4>", ":UndotreeToggle<CR>", { noremap = true, silent = false })
-- highlight busqueda
map("n", "<c-h>", ":set !hlsearch", { noremap = true, silent = false })
--mueve bloques de codigo en modo visual o V-Line
map("x", "K", ":move '<-2<CR>gv-gv", { noremap = true, silent = false })
map("x", "J", ":move '>+1<CR>gv-gv", { noremap = true, silent = false })
--cambiar de buffer tabline
-- map("n", "<TAB>", ":TablineBufferNext<CR>", opts)
-- map("n", "<S-TAB>", ":TablineBufferPrevious<CR>", opts)
--cambiar de buffer bufferline
map("n", "<TAB>", ":BufferLineCycleNext<CR>", opts)
map("n", "<S-TAB>", ":BufferLineCyclePrev<CR>", opts)

--"guardar archivo
map("n", "<C-s>", ":%s/\\s\\+$//e<bar>:w<CR>", { noremap = true, silent = false })
map("i", "<C-s>", "<Esc>:s/\\s\\+$//e<bar>:w<CR>", { noremap = true, silent = false })

--Terminal flotante
map("n", "<F12>", ":FloatermToggle<CR>", { noremap = true, silent = true })
map("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true, silent = true })

--Formatear codigo
map("n", "<C-f>", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = false })
--"cargar configuracion  nmap <leader>so :so ~/.config/nvim/init.vim<CR>
map("n", "<leader>so", ":luafile ~/.config/nvim/init.lua<CR>", { noremap = true, silent = false })
--" Commentary
-- map('n', '<leader>/', 'gcc', opts)
-- map('v', '/', 'gc', opts)
--"----------------Dimensionar ventana---------
map("n", "<leader>+", "vertical resize +5<CR>", { noremap = true, silent = false })
map("n", "<leader>-", "vertical resize -5<CR>", { noremap = true, silent = false })
map("n", "<leader>>", "zR", { noremap = true, silent = false })
map("n", "<leader><", "zC", { noremap = true, silent = false })
--"----------------Buffers---------------------
map("n", "<leader>x", ":bdelete<CR>", { noremap = true, silent = false })
-- map('n', '<leader>mm', '<C-W>K',{noremap=true, silent=false})
-- --React para cambiar comentarios
-- map('n', '<leader>e', ":set commentstring={/*%s*/}<CR>", opts)
-- map('n', '<leader>w', ":set commentstring=//%s<CR>", opts)
map("n", "<c-y>", ":set hlsearch!<CR>", opts)
-- Zen mode y twilight
map("n", "<leader>zz", ":ZenMode<CR>", opts)
map("n", "<leader>zt", ":Twilight<CR>", opts)
map("n", "<silent>tt", ":t.<CR>", opts)
-- Reemplazar todo en el archivo
vim.keymap.set("n", "<leader>b", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
	callback = function()
		vim.highlight.on_yank()
	end,
	group = highlight_group,
	pattern = "*",
})
