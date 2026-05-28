return {
  "CopilotC-Nvim/CopilotChat.nvim",
  dependencies = {
    { "github/copilot.vim" }, -- Copilot authentication
    { "nvim-lua/plenary.nvim" },
  },
  build = "make tiktoken",
  opts = {},
}
