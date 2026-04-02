return {
  {
    'akinsho/toggleterm.nvim',
    opts = {
      size = 20,
      direction = 'horizontal',
    },
    version = '*',
    keys = {
      { '<leader>tt', '<cmd>ToggleTerm<cr>', mode = 'n', desc = 'Open Terminal' },
    },
  },
}
