return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  -- This ensures the plugin loads early enough to trigger the installs
  event = { "BufReadPost", "BufNewFile" }, 
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "markdown", "python", "go" },
    highlight = { enable = true },
    indent = { enable = true },
    auto_install = true,
  },
  config = function(_, opts)
    -- In newer versions, this is the preferred way to call setup
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end,
}
