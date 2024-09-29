return{
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>vs", vim.cmd.Git)
        vim.keymap.set("n", "<leader>va", "<cmd>Git add *<CR>")
        vim.keymap.set("n", "<leader>vc", "<cmd>Git commit<CR>")
        vim.keymap.set("n", "<leader>vl", "<cmd>Git log --oneline --graph --decorate --all<CR>") 
    end,
}
