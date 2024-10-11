-- fileName filetree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        hijack_netrw_behavior = 'open_default',
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          hide_dotfiles = false,
          hide_gitignore = false,
        },
      },
      window = {
        position = 'right',
        width = 27,
        auto_expand_width = true,
      },
      event_handlers = {
        {
          event = 'neo_tree_window_after_open',
          handler = function(args)
            if args.position == 'left' or args.position == 'right' then
              vim.cmd 'wincmd p'
            end
          end,
        },
      },
    }
  end,
}
