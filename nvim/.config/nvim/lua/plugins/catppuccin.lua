require("catppuccin").setup({
    flavour = "macchiato",
    integration = {
        beacon = true,
        cmp = true,
        dropbar = true,
        fidget = true,
        harpoon = true,
        indent_blankline = {
            enabled = true,
        },
        mason = true,
        native_lsp = {
            enabled = true,
            inlay_hints = {
                background = true,
            }
        },
        noice = true,
        nvim_surround = true,
        rainbow_delimiters = true,
        telescope = true,
        which_key = false,
    },
})

vim.cmd.colorscheme "catppuccin"
