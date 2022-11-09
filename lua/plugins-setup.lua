-- auto install packer if not installed
local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

-- import packer safely
local status, packer = pcall(require, "packer")
if not status then
	return
end

-- add list of plugins to install
return packer.startup(function(use)
	-- packer can manage itself
	use("wbthomason/packer.nvim")

	use("nvim-lua/plenary.nvim") -- lua functions that many plugins use

	use("bluz71/vim-nightfly-guicolors") -- preferred colorscheme
	use("navarasu/onedark.nvim") -- preferred colorscheme
	use("EdenEast/nightfox.nvim") -- preferred colorscheme
	use("sainnhe/sonokai") -- preferred colorscheme
	use("projekt0n/github-nvim-theme") -- preferred colorscheme
	use("morhetz/gruvbox") -- preferred colorscheme
	use("sainnhe/gruvbox-material") -- preferred colorscheme
	use("folke/tokyonight.nvim") -- preferred colorscheme
	use("dracula/vim") -- preferred colorscheme
	use("Shatur/neovim-ayu") -- preferred colorscheme

	use("christoomey/vim-tmux-navigator") -- tmux & split window navigation

	-- use("szw/vim-maximizer") -- maximizes and restores current window
	--
	-- essential plugins
	use("tpope/vim-surround") -- add, delete, change surroundings (it's awesome)
	use("vim-scripts/ReplaceWithRegister") -- replace with register contents using motion (gr + motion)

	-- commenting with gc
	use("numToStr/Comment.nvim")

	-- file explorer
	use("nvim-tree/nvim-tree.lua")

	-- vs-code like icons
	use("kyazdani42/nvim-web-devicons")

	-- statusline
	use("nvim-lualine/lualine.nvim")

	-- tabs
	use("akinsho/bufferline.nvim")
	-- use("kdheepak/tabline.nvim")

	-- fuzzy finding w/ telescope
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }) -- dependency for better sorting performance
	use({ "nvim-telescope/telescope.nvim", branch = "0.1.x" }) -- fuzzy finder

	-- autocompletion
	use("hrsh7th/nvim-cmp") -- completion plugin
	use("hrsh7th/cmp-buffer") -- source for text in buffer
	use("hrsh7th/cmp-path") -- source for file system paths
	use("hrsh7th/cmp-emoji")
	-- snippets
	use("L3MON4D3/LuaSnip") -- snippet engine
	use("saadparwaiz1/cmp_luasnip") -- for autocompletion
	use("rafamadriz/friendly-snippets") -- useful snippets

	-- managing & installing lsp servers, linters & formatters
	use("williamboman/mason.nvim") -- in charge of managing lsp servers, linters & formatters
	use("williamboman/mason-lspconfig.nvim") -- bridges gap b/w mason & lspconfig

	-- configuring lsp servers
	use("neovim/nvim-lspconfig") -- easily configure language servers
	use("hrsh7th/cmp-nvim-lsp") -- for autocompletion
	use({ "glepnir/lspsaga.nvim", branch = "main" }) -- enhanced lsp uis
	use("jose-elias-alvarez/typescript.nvim") -- additional functionality for typescript server (e.g. rename file & update imports)
	use("onsails/lspkind.nvim") -- vs-code like icons for autocompletion

	-- formatting & linting
	use("jose-elias-alvarez/null-ls.nvim") -- configure formatters & linters
	use("jayp0521/mason-null-ls.nvim") -- bridges gap b/w mason & null-ls

	-- treesitter configuration
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	-- auto closing
	use("windwp/nvim-autopairs") -- autoclose parens, brackets, quotes, etc...
	use({ "windwp/nvim-ts-autotag", after = "nvim-treesitter" }) -- autoclose tags

	-- git integration
	use("lewis6991/gitsigns.nvim") -- show line modifications on left hand side

	--Otros plugins mios
	use("folke/which-key.nvim")
	use("nathanaelkane/vim-indent-guides") --vim-indent-guides
	use("tpope/vim-fugitive") --manejo de git
	use("psliwka/vim-smoothie") --desplazamiento suave
	use("mbbill/undotree") -- undotree
	use("norcalli/nvim-colorizer.lua") -- ver colores
	use("voldikss/vim-floaterm")

	-- /FLUTTER
	use("dart-lang/dart-vim-plugin") -- flutter sintax color and format
	use("thosakwe/vim-flutter") --commandos para manejar flutter
	-- -- use 'natebosch/vim-lsc' -- lsc support for flutter
	-- use 'natebosch/vim-lsc-dart' -- lsc support for dart
	-- use("nvim-lua/lsp_extensions.nvim")
	-- -- use {'neoclide/coc.nvim', branch='release'} -- co,pletion for dart
	-- use({ "akinsho/flutter-tools.nvim", requires = "nvim-lua/plenary.nvim" })
	--use 'nvim-pack/lsp-fastaction.nvim'
	-- Cero distracciones
	use("folke/zen-mode.nvim")
	use("folke/twilight.nvim")
	use("NTBBloodbath/rest.nvim")
	use({
		"phaazon/hop.nvim",
		branch = "v2",
	})
	use({
		"kristijanhusak/vim-dadbod-ui",
		requires = {
			"kristijanhusak/vim-dadbod-completion",
			"tpope/vim-dadbod",
			"tpope/vim-dotenv",
		},
	})

	if packer_bootstrap then
		require("packer").sync()
	end
end)
