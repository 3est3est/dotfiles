-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.opt.updatetime = 300

vim.opt.autoread = true
vim.api.nvim_create_autocmd({ "BufEnter", "CursorHold", "FocusGained" }, {
  command = "checktime",
})
