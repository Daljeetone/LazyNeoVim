
return {
  -- add fzf
  { "junegunn/fzf", build = "./install --bin" },

  -- Configure LazyVim to load fzf
  {
    "ibhagwan/fzf-lua",
    -- optional for icon support
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      -- calling `setup` is optional for customization
      require("fzf-lua").setup({})
    end
  },

}
