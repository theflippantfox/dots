local status, nvimtree = pcall(require, 'nvim-tree')
if not status then return end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

nvimtree.setup({
  sort_by = "case_sensitive",
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
    exclude = { '.git', 'node_modules' }
  },
  view = {
    width = 25,
  }
})
