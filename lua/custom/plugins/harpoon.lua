return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>ha', mark.add_file, { desc = 'add file to Harpoon' })
    vim.keymap.set('n', '<leader>th', ui.toggle_quick_menu, { desc = 'Toggle Harpoon' }) -- refresh file explorer
  end,
}
