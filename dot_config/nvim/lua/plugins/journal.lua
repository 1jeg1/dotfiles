return {
  {
    "jakobkhansen/journal.nvim",
    -- Load the plugin when you use the :Journal command
    cmd = { "Journal", "JournalEntry" },
    -- Optional keymaps to quickly open entries
    keys = {
      { "<leader>jj", "<cmd>Journal<cr>",            desc = "Open Journal Selector" },
      { "<leader>jd", "<cmd>JournalEntry today<cr>", desc = "Open Today's Journal" },
    },
    opts = {
      -- Change this to where you want your journal files stored
      root_dir = vim.fn.expand("~/Documents/journal/"),
      file_extension = "md",
    },
    config = function(_, opts)
      require("journal").setup(opts)
    end,
  },
}
