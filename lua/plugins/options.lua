return {
  {
    'folke/edgy.nvim',
    opts = function(_, opts)
      -- Set colorcolumn for specific filetypes
      vim.api.nvim_create_autocmd('FileType', {
        pattern = { 'python', 'lua', 'go', 'javascript', 'typescript' },
        callback = function()
          vim.opt.colorcolumn = '80,120' -- Two vertical lines at 80 and 120
          -- or just one line:
          -- vim.opt.colorcolumn = "80"
        end,
      })
    end,
  },
}
