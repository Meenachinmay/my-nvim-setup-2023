-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")
  use("preservim/nerdtree")
  use({
	"Pocco81/auto-save.nvim",
	config = function()
		 require("auto-save").setup {
			-- your config goes here
			-- or just leave it empty :)
            {
                enabled = true, -- start auto-save when the plugin is loaded (i.e. when your package manager loads it)
                execution_message = {
                    message = function() -- message to print on save
                        return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
                    end,
                    dim = 0.18, -- dim the color of `message`
                    cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
                },
                trigger_events = {"InsertLeave", "TextChanged"}, -- vim events that trigger auto-save. See :h events
                -- function that determines whether to save the current buffer or not
                -- return true: if buffer is ok to be saved
                -- return false: if it's not ok to be saved
                condition = function(buf)
                    local fn = vim.fn
                    local utils = require("auto-save.utils.data")

                    if
                        fn.getbufvar(buf, "&modifiable") == 1 and
                        utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
                        return true -- met condition(s), can save
                    end
                    return false -- can't save
                end,
                write_all_buffers = false, -- write all buffers when the current one meets `condition`
                debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
                callbacks = { -- functions to be executed at different intervals
                enabling = nil, -- ran when enabling auto-save
                disabling = nil, -- ran when disabling auto-save
                before_asserting_save = nil, -- ran before checking `condition`
                before_saving = nil, -- ran before doing the actual save
                after_saving = nil -- ran after doing the actual save
            }
        }
		 }
	end,
})

    use('MunifTanjim/prettier.nvim')
    use('windwp/nvim-autopairs')
    use('windwp/nvim-ts-autotag')
    use ("lukas-reineke/lsp-format.nvim")

end)

