return {
  {
    'nvim-telescope/telescope.nvim',
    opts = function(_, opts)
      local actions = require 'telescope.actions'

      opts.defaults.mappings.i['<C-a>'] = actions.results_scrolling_left
      opts.defaults.mappings.i['<C-e>'] = actions.results_scrolling_right

      return opts
    end,
  },
}
