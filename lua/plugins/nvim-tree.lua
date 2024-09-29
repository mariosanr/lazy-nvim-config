return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
      --
      -- disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      -- optionally enable 24-bit colour
      vim.opt.termguicolors = true

      -- setup with some options
      require("nvim-tree").setup({
        sort = {
          sorter = "case_sensitive",
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
      })


      vim.keymap.set("n", "<leader>tt", "<cmd>NvimTreeToggle<CR>")
      vim.keymap.set("n", "<leader>ta", "<cmd>NvimTreeOpen<CR>")
      vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeFindFileToggle<CR>")
      vim.keymap.set("n", "<leader>tc", "<cmd>NvimTreeCollapse<CR>")
      vim.keymap.set("n", "<leader>tr", "<cmd>NvimTreeRefresh<CR>")


  end,
}
