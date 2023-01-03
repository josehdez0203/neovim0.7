local wk = require("which-key")
local mappings = {
  Q = { ":q!<cr>", "Quit" },
  q = { ":wq!<cr>", "Save & Quit" },
  E = { ":e ~/.config/nvim/init.lua<cr>", "Edit config" },
  f = { ":Telescope find_files<cr>", "Telescope Find Files" },
  r = { ":Telescope live_grep<cr>", "Telescope Live Grep" },
  -- b = { ":Telescope buffers<cr>", "Telescope Buffers" },
  h = { ":Telescope help_tags<cr>", "Telescope Help" },
  m = {
    name = "Mind notes",
    o = { ":MindOpenMain<cr>", "Open main notes" },
    p = { ":MindOpenProject<cr>", "Open proyecto" },
    c = { ":MindClose<cr>", "Close Main" },
  },
  F = {
    name = "Flutter",
    a = { ":FlutterRun<cr>", "Flutter Run" },
    q = { ":FlutterQuit<cr>", "Flutter Quit" },
    r = { ":FlutterHotReload<cr>", "Flutter HotReload" },
    R = { ":FlutterHotRestart<cr>", "Flutter HotRestart" },
    D = { ":FlutterVisualDebug<cr>", "Flutter VisualDebugging" },
    A = { ":FlutterSplit<cr>", "Flutter window" },
    e = { ":FlutterEmulatorsLaunch Pixel_3_API_28<cr>", "Flutter Emulators" },
  },
  k = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Info" },
  g = {
    name = "Go",
    D = { "<cmd>lua vim.lsp.buf.declaration()<CR>", "Declaración" },
    i = { "<cmd>lua vim.lsp.buf.implementation()<CR>", "Implementacíon" },
    r = { "<cmd>lua vim.lsp.buf.references()<CR>", "Referencias" },
    d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definición" }, -- see definition and make edits in window
    f = { "<cmd>Lspsaga lsp_finder<CR>", "Show definition references" }, -- show definition, references
    c = { "<cmd>Telescope git_commits<cr>", "Git commit" }, -- list all git commits (use <cr> to checkout) ["gc" for git commits]
    b = { "<cmd>Telescope git_branches<cr>", "Git branches" }, -- list git branches (use <cr> to checkout) ["gb" for git branch]
    s = { "<cmd>Telescope git_status<cr>", "Git Status" }, -- list current changes per file with diff preview ["gs" for git status]
  },
  l = {
    name = "LSP",
    i = { ":LspInfo<cr>", "Connected Language Servers" },
    e = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Lista de diagnósticos" },
    c = { "<cmd>Lspsaga code_action<CR>", "Code Actions" }, -- see available code actions
    r = { "<cmd>Lspsaga rename<CR>", "Rename" }, -- smart rename
    l = { "<cmd>Lspsaga show_line_diagnostics<CR>", "Diagnostico línea" }, -- show  diagnostics for line
    d = { "<cmd>Lspsaga show_cursor_diagnostics<CR>", "Diagnostico cursor" }, -- show diagnostics for cursor
    p = { "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Diag. Anterior" }, -- jump to previous diagnostic in buffer
    n = { "<cmd>Lspsaga diagnostic_jump_next<CR>", "Diag. Siguiente" }, -- jump to next diagnostic in buffer
    K = { "<cmd>Lspsaga hover_doc<CR>", "Ayuda" }, -- show documentation for what is under cursor
    o = { "<cmd>LSoutlineToggle<CR>", "Outline" }, -- see outline on right hand side
  },
}

local opts = { prefix = "<leader>" }
wk.register(mappings, opts)
-- d = { "<cmd>lua vim.lsp.buf.definition()<CR>", "Definición" },
--   D={"<Cmd>lua vim.lsp.buf.declaration()<CR>", opts) -- got to declaration
-- keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts) -- go to implementation
-- w = {":w<cr>", "Save"},
-- x = {":bdelete<cr>", "Close"},s
-- e = { ":Telescope emoji<cr>", "Telescope Emoji" },
-- -- F = {":Telescope flutter commands theme=get_cursor<cr>", "Telescope Flutter"},
-- c = {
-- 	name = "Copilot",
-- 	s = { ":Copilot status<CR>", "Copilot Estado" },
-- 	e = { ":Copilot enable<CR>", "Habilitar Copilot" },
-- 	d = { ":Copilot disable<CR>", "Desabilitar Copilot" },
-- },
-- f= {":CocFix<cr>", "Code Actions Fix"},
-- g= {"<Plug>(coc-definition)", "Go definition"},
-- l = {
-- 	-- See `:help vim.lsp.*` for documentation on any of the below functions
-- 	name = "LSP",
-- 	i = { ":LspInfo<cr>", "Connected Language Servers" },
-- 	-- A = {'<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', "Add workspace folder"},
-- 	-- R = {'<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', "Remove workspace folder"},
-- 	-- l = {'<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', "List workspace folder"},
-- 	D = { "<cmd>lua vim.lsp.buf.type_definition()<CR>", "Type definition" },
-- 	r = { "<cmd>lua vim.lsp.buf.rename()<CR>", "Rename" },
-- 	f = { "<cmd>lua vim.lsp.buf.formatting()<CR>", "Format" },
-- 	K = { "<cmd>lua vim.lsp.buf.hover()<CR>", "Info" },
-- 	h = { "<cmd>lua vim.lsp.buf.signature_help()<CR>", "Info" },
-- 	R = { ":LspRestart<CR>", "Reiniciar LSP" },
-- 	d = { ":Telescope diagnostics theme=get_cursor<CR>", "Diagnósticos" },
-- 	c = { "<cmd>lua require('lspsaga.codeaction').code_action()<CR>", "Code Actions" },
-- },
-- d = {
-- 	name = "Diagnósticos",
-- 	d = { "<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", "Diagnostico" },
-- 	q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>", "Show loclist" },
-- 	n = { "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", "Siguiente Diagnostico" },
-- 	p = { "<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>", "Anterior Diagnostico" },
-- 	l = { "<cmd>lua vim.diagnostic.open_float()<CR>", "Lista Diagnosticos" },
-- },
