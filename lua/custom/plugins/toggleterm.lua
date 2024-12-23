return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      size = math.floor(vim.o.lines * 0.2),
      hide_numbers = true,
      shade_filetypes = {},
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      persist_size = true,
      close_on_exit = true,
      direction = 'horizontal',
      float_opts = {
        border = 'curved',
        winblend = 10,
        highlights = {
          border = 'Normal',
          background = 'Normal',
        },
      },
    },
  },
}
