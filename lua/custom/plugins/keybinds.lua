return {
  vim.keymap.set('n', '<leader>cc', '<cmd>!gcc -o main main.c<CR>', { desc = '[C]ode [C]ompile', silent = false }),
  vim.keymap.set('n', '<leader>cr', '<cmd>!./main<CR>', { desc = '[C]ode [R]un', silent = false }),
  vim.keymap.set('n', '<leader>cx', '<cmd>!gcc -o main main.c && ./main<CR>', { desc = '[C]ompile and e[X]ecute', silent = false }),
  vim.keymap.set('n', '<leader>ga.', '<cmd>!git add . <CR>', { desc = '[G]it [A]dd' }),
  vim.keymap.set('n', '<leader>gc', '<cmd>!git commit <CR>', { desc = '[G]it [C]ommit' }),
  vim.keymap.set('n', '<leader>gac', '<cmd>!git add . && git commit <CR>', { desc = '[G]it [A]dd and [C]ommit' }),
<<<<<<< HEAD
=======
>>>>>>> parent of c99308b (Added some more cool Keybinds)
}
