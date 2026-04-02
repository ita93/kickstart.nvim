return {
  'lukas-reineke/virt-column.nvim',
  -- Remove `ft = ...` if you want the column line to show up in ALL files.
  -- If you truly ONLY want the plugin active in lua/rust/go, you can keep it.

  config = function()
    -- 1. Setup the plugin (you can pass visual options like `char = '|'` here if you want)
    require('virt-column').setup()

    -- 2. Set the global default fallback to 80
    vim.opt.colorcolumn = '80'

    -- 3. Dynamically set it to 120 for specific filetypes
    vim.api.nvim_create_autocmd('FileType', {
      pattern = { 'lua', 'rust', 'go', 'python', 'javascript', 'typescript' },
      callback = function()
        -- opt_local ensures this only affects the current buffer
        vim.opt_local.colorcolumn = '120'
      end,
    })
  end,
}
