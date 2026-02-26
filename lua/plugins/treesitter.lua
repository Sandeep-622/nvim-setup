return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    -- New nvim-treesitter API for Neovim 0.11+
    require("nvim-treesitter").setup({
      install_dir = vim.fn.stdpath('data') .. '/site'
    })
    
    -- Install parsers
    require("nvim-treesitter").install({ "lua", "vim", "vimdoc", "markdown", "python", "go" })
    
    -- Enable treesitter highlighting for specific filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'lua', 'vim', 'markdown', 'python', 'go' },
      callback = function()
        vim.treesitter.start()
      end,
    })
    
    -- Enable treesitter-based indentation
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'lua', 'python', 'go' },
      callback = function()
        vim.bo.indentexpr = 'v:lua.require("nvim-treesitter.indent").get_indent(v:lnum)'
      end,
    })
  end,
}
