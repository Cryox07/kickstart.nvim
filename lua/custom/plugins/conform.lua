-- conform Formatter
-- https://github.com/stevearc/conform.nvim

return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  -- Optional dependency
  config = function()
    local conform = require 'conform'
    conform.setup {
      formatters_by_ft = {
        lua = { 'stylua' },
        java = { 'google-java-format' },
        c = { 'clang-format' },

        format_on_save = {
          timeout_ms = 500,
          lsp_fallback = true,
        },
      },
    }

    vim.keymap.set({ 'n', 'v' }, '<leader>l', function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = 'Format file or range (in visual mode only)' })
  end,
}
