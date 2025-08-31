require 'core.options'
require 'core.keymaps'
require 'core.snippets'

-- Install package manager
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Setup plugins
require('lazy').setup {
  require 'plugins.themes.kanagawa', -- theme
  require 'plugins.alpha', -- start screen
  require 'plugins.neo-tree', -- file explorer
  require 'plugins.bufferline', -- tabs
  require 'plugins.lualine', -- bottom status line
  require 'plugins.treesitter', -- syntax highlighting and definition
  require 'plugins.telescope', -- finder
  require 'plugins.lsp', -- language service protocol
  require 'plugins.autocompletion', -- autocompletion
  require 'plugins.none-ls', -- autoformatting
  require 'plugins.gitsigns', -- git signs
  require 'plugins.indent-blankline', --indent vertical line
  require 'plugins.misc', -- miscellaneous small plugins
  require 'plugins.vim-tmux-navigator', -- tmux/vim navigator
}
