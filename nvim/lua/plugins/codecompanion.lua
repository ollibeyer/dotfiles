return {
  "olimorris/codecompanion.nvim",
  lazy = false,
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = { adapter = "copilot" },
      inline = { adapter = "copilot" },
    },
  },
  keys = {
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", mode = { "n", "v" } },
  },
}
