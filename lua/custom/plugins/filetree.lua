-- fileName filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        follow_current_file = true,
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignore = false,
        },
      },
      window = {
        position = 'right',
        width = 25,
        auto_expand_width = true,
      },
      default_component_configs = {
        container = {
          enable_character_fade = true,
          width = '100%',
          right_padding = 0,
        },
      },
    }
  end,
}
