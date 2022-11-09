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

-- vim-maximizer
-- keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization
--
-- nvim-tree
-- keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
map("n", "<F3>", ":NvimTreeToggle<CR>", { noremap = true, silent = false })
map("n", "<F7>", ":NvimTreeFindFile<CR>", { noremap = true, silent = false })

-- telescope
-- keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
-- keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
-- keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
-- keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
-- keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
--
-- telescope git commands (not on youtube nvim video)
-- keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
-- keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
-- keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
-- keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
-- keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

--Indentacion
map("v", "<", "<gv", { noremap = true, silent = false })
map("v", ">", ">gv", { noremap = true, silent = false })
--Terminal flotante
map("n", "<F12>", ":FloatermToggle<CR>", { noremap = true, silent = true })
map("t", "<F12>", "<C-\\><C-n>:FloatermToggle<CR>", { noremap = true, silent = true })
--Abrir navegador y buscar en archivo en arbol
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
