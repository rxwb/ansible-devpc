-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Expand tabs
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.autoindent = true
vim.opt.smartindent = true

-- Show line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Highlight line your cursor is on
vim.opt.cursorline = true

-- Keep cursor off the edges
vim.opt.scrolloff = 10

-- Show some whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- Solarized colorscheme
    {
      "craftzdog/solarized-osaka.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    -- Collection of various small independent plugins/modules
    {
      'echasnovski/mini.nvim',
      config = function()
          local icons = require 'mini.icons'
          icons.setup()
          local git = require 'mini.git'
          git.setup()
          local statusline = require 'mini.statusline'
          statusline.setup()
      end
    },
    -- Rust LSP support
    {
      'mrcjkb/rustaceanvim',
      version = '^5',
      lazy = false, -- This plugin is already lazy
    },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Colorscheme
vim.cmd[[colorscheme solarized-osaka]]
