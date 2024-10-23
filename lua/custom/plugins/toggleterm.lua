return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      size = 10,
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      direction = 'float',
      float_opts = {
        border = 'curved',
        winblend = 80,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    },
    config = function(_, opts)
      require('toggleterm').setup(opts)
      vim.api.nvim_create_autocmd('TermOpen', {
        pattern = 'term://*toggleterm#*',
        callback = function()
          vim.cmd 'setlocal winblend=30'
          vim.cmd 'setlocal winhl=Normal:Normal'
        end,
      })
    end,
  },
}
