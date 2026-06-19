require("settings")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({"git", "clone", "--filter=blob:none", "https://github.com/folke/lazy.nvim.git", lazypath})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = { 
    { import = "plugins" },
    { "folke/tokyonight.nvim", priority = 1000, config = function() vim.cmd.colorscheme("tokyonight-night") end },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
    { "nvim-tree/nvim-tree.lua", config = true },
    { "nvim-telescope/telescope.nvim", tag = "0.1.8", dependencies = { "nvim-lua/plenary.nvim" } }
  },
  -- "rocks" MUSS hier stehen, auf der gleichen Ebene wie "spec"
  rocks = {
    enabled = false,
  },
})

-- HIER der entscheidende Unterschied: Treesitter-Setup außerhalb von lazy.setup
-- Wir warten, bis Neovim "Idle" ist, dann initialisieren wir Treesitter.
vim.defer_fn(function()
  local ok, ts = pcall(require, "nvim-treesitter.configs")
  if ok then
    ts.setup({
      ensure_installed = { "lua", "vim", "bash", "python" },
      highlight = { enable = true },
    })
  end
end, 200)

vim.opt.number = true
vim.opt.termguicolors = true
