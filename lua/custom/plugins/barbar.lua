return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  config = function()
    -- First set up barbar with the configuration
    require('barbar').setup {
      -- Enable/disable animations
      animation = true,
      -- Enable/disable auto-hiding the tab bar when there is a single buffer
      auto_hide = false,
      -- Enable/disable current/total tabpages indicator (top right corner)
      tabpages = true,
      -- Enables/disable clickable tabs
      clickable = true,

      -- Configure icons on the bufferline.
      icons = {
        -- Configure the base icons on the bufferline.
        buffer_index = false,
        buffer_number = false,
        button = '',
        -- Enables / disables diagnostic symbols
        diagnostics = {
          [vim.diagnostic.severity.ERROR] = { enabled = true },
          [vim.diagnostic.severity.WARN] = { enabled = false },
          [vim.diagnostic.severity.INFO] = { enabled = false },
          [vim.diagnostic.severity.HINT] = { enabled = true },
        },
        gitsigns = {
          added = { enabled = true, icon = '+' },
          changed = { enabled = true, icon = '~' },
          deleted = { enabled = true, icon = '-' },
        },
        filetype = {
          -- Sets the icon's highlight group.
          -- If false, will use nvim-web-devicons colors
          custom_colors = false,
          -- Requires `nvim-web-devicons` if `true`
          enabled = true,
        },
        separator = { left = '▎', right = '' },

        -- If true, add an additional separator at the end of the buffer list
        separator_at_end = true,

        -- Configure the icons on the bufferline when modified or pinned.
        -- Supports all the base icon options.
        modified = { button = '●' },
        pinned = { button = '', filename = true },

        -- Use a preconfigured buffer appearance— can be 'default', 'powerline', or 'slanted'
        preset = 'slanted',
      },
    }

    -- Then set up the keymaps
    vim.keymap.set('n', '<C-M-]>', '<Cmd>BufferNext<CR>', { desc = 'Go to next buffer' })
    vim.keymap.set('n', '<C-M-[>', '<Cmd>BufferPrevious<CR>', { desc = 'Go to previous buffer' })
  end,
  version = '^1.0.0',
}
