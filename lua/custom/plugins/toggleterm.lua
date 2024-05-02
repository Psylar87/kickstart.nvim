return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    opts = {
      open_mapping = [[<c-\>]],
      size = 20,
      hide_numbers = true, -- hide the number column in toggleterm buffers
      shade_filetypes = {}, -- this table is to disable filetype highlights for this terminal, add to it if you want more to be disabled
      shade_terminals = false, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false.
      shading_factor = 1, -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light backgrounds
      start_in_insert = true,
      persist_size = true, -- persist size when hidden
      close_on_exit = true, -- close on exit
      direction = 'horizontal', -- | 'horizontal' | 'vertical' | 'tab' | 'float',
      float_opts = {
        border = 'curved', -- | 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
        winblend = 10, -- transparency
        highlights = {
          border = 'Normal', -- | 'FloatBorder' | 'Normal'
          background = 'Normal', -- | 'FloatBg' | 'Normal'
        },
      },
    },
  },
}
