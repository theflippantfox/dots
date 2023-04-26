local status, packer = pcall(require, 'packer')
if not status then
  print('Packer not installed')
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use { 'wbthomason/packer.nvim' }

  use { 'nvim-tree/nvim-web-devicons' }
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'nvim-tree/nvim-tree.lua' }
  use { 'nvim-treesitter/nvim-treesitter' }
  use { 'akinsho/bufferline.nvim' }
  use { 'nvim-lua/plenary.nvim' }

  use { 'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      {
        -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },     -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' },     -- Required
    }
  }

  use { 'glepnir/dashboard-nvim' }
  use { 'nvimdev/galaxyline.nvim' }
  use { 'nvim-telescope/telescope.nvim' }
  use { 'folke/which-key.nvim' }
  use { 'rcarriga/nvim-notify' }

  use { 'rest-nvim/rest.nvim' }
end)
