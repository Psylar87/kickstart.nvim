return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        theme = 'auto',
        icons_enabled = true,
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          'branch',
          'diff',
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = ' ', warn = ' ', info = ' ' },
          },
        },
        lualine_c = {
          {
            'filename',
            path = 1,
            symbols = {
              modified = '[+]',
              readonly = '[-]',
              unnamed = '[No Name]',
            },
          },
        },
        lualine_x = {
          {
            'fileformat',
            symbols = {
              unix = '', -- mac/unix systems
              dos = '', -- windows
              mac = '', -- explicit mac symbol
            },
            padding = { left = 1, right = 1 },
          },
          'encoding',
          {
            'filetype',
            icon_only = true, -- set to true if you only want the icon
            padding = { left = 1, right = 1 },
          },
        },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
    }
  end,
}
