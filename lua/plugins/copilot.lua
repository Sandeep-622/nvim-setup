return {
  "github/copilot.vim",
  lazy = false,  -- Load immediately
  config = function()
    -- Accept suggestion with Tab
    vim.keymap.set('i', '<Tab>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true
    
    -- Next/Previous suggestions
    vim.keymap.set('i', '<M-]>', '<Plug>(copilot-next)')
    vim.keymap.set('i', '<M-[>', '<Plug>(copilot-previous)')
    vim.keymap.set('i', '<M-\\>', '<Plug>(copilot-dismiss)')
    
    -- Disable for certain filetypes
    vim.g.copilot_filetypes = {
      ["*"] = true,
      ["yaml"] = false,
      ["markdown"] = false,
      ["help"] = false,
      ["gitcommit"] = false,
      ["gitrebase"] = false,
    }
  end,
}
