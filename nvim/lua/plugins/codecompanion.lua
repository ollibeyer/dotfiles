return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = { adapter = "copilot" },
        inline = { adapter = "copilot" },
      },
      adapters = {
        copilot = function()
          return require("codecompanion.adapters").extend("copilot")
        end,
      },
    })
  end,
  keys = {
    { "<leader>ac", "<cmd>CodeCompanionChat<cr>", mode = { "n", "v" } },
  },
}
