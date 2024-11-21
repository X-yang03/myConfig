local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "tanvirtin/monokai.nvim", --theme
    -- Vscode-like pictograms
	{
		"onsails/lspkind.nvim",
		event = { "VimEnter" },
	},
	-- Auto-completion engine
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"lspkind.nvim",
			"hrsh7th/cmp-nvim-lsp", -- lsp auto-completion
			"hrsh7th/cmp-buffer", -- buffer auto-completion
			"hrsh7th/cmp-path", -- path auto-completion
			"hrsh7th/cmp-cmdline", -- cmdline auto-completion
		},
		config = function()
			require("config.nvim-cmp")
		end,
	},
	-- Code snippet engine
	{
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	},
    "github/copilot.vim",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    {
        "kyazdani42/nvim-tree.lua",
         event = "VimEnter",
         dependencies = "nvim-tree/nvim-web-devicons",
           config = function()
                 require("config.nvim-tree")
             end,
    },
    -- pair brackets
    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        config = function ()
            require("config.autopairs")
        end,
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
    },

    -- UI
    {
        "nvim-lualine/lualine.nvim",
        config = function ()
            require("config.lualine")
        end,
    },
    {
        "akinsho/bufferline.nvim",
        config = function ()
            require("config.bufferline")
        end,
    },
    {
        "lewis6991/gitsigns.nvim",
        config = function ()
            require("config.gitsigns")
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter", -- Hightlight
    },
    {
        "p00f/nvim-ts-rainbow", -- different colors for different brakets
        dependencies = "nvim-treesitter/nvim-treesitter",
    },


    -- file searching
    {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { "nvim-lua/plenary.nvim",
                        "BurntSushi/ripgrep" -- sudo apt install
                    },
    },
    {
    'terrortylor/nvim-comment',
       config =  function ()
            require('config.nvim-comment')
        end
    },

    ui = {
    icons = { -- 各种元素的图标配置
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
        },
    },
})
