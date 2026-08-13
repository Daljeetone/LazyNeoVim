-- Toggle a persistent terminal running the `dm` (Devmate) CLI.
-- Swap "dm" for "claude" to use Claude Code @ Meta instead.
return {
  "folke/snacks.nvim",
  keys = {
    {
      "<leader>a",
      function()
        Snacks.terminal.toggle("dm", { win = { position = "right" } })
      end,
      desc = "Devmate (dm)",
      mode = "n",
    },
  },
}
