local status_ok, paq = pcall(require, "paq")
if not status_ok then
	return
end

paq {
    "savq/paq-nvim";
	"nvim-lua/popup.nvim";
	"nvim-lua/plenary.nvim";
	"kyazdani42/nvim-web-devicons";
	"kyazdani42/nvim-tree.lua";
	{ "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } };
    "glepnir/zephyr-nvim";
	"goolord/alpha-nvim";
	"nvim-lualine/lualine.nvim";
	"lukas-reineke/indent-blankline.nvim";
	"machakann/vim-sandwich";
	"segeljakt/vim-silicon";
	"Rasukarusan/vim-block-paste";
	"Rasukarusan/nvim-select-multi-line";
	"simeji/winresizer";
	"hrsh7th/nvim-cmp";
	"hrsh7th/cmp-buffer";
	"hrsh7th/cmp-path";
	"hrsh7th/cmp-cmdline";
	"hrsh7th/cmp-nvim-lsp";
	"hrsh7th/cmp-nvim-lua";
	"saadparwaiz1/cmp_luasnip";
	"L3MON4D3/LuaSnip";
	"rafamadriz/friendly-snippets";
	"neovim/nvim-lspconfig";
	"williamboman/nvim-lsp-installer";
	"tamago324/nlsp-settings.nvim";
	"jose-elias-alvarez/null-ls.nvim";
	"simrat39/rust-tools.nvim";
	"github/copilot.vim";
	"nvim-telescope/telescope.nvim";
	"nvim-telescope/telescope-media-files.nvim";
	-- faster option plugins
	use({
		"lewis6991/impatient.nvim",
		config = { compile_path = vim.fn.stdpath("config") .. "/lua/packer_compiled.lua" },
	})
	use({
		"PHSix/faster.nvim",
		event = { "VimEnter *" },
		config = function()
			vim.api.nvim_set_keymap("n", "j", "<Plug>(faster_move_gj)", { noremap = false, silent = true })
			vim.api.nvim_set_keymap("n", "k", "<Plug>(faster_move_gk)", { noremap = false, silent = true })
		end,
	})
}
