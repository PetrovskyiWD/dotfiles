return {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("kanagawa").setup {
            compile = false,
            undercurl = true,
            commentStyle = { italic = true },
            transparent = true,
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none",
                        }
                    }
                }
            }
        }

        -- setup must be called before loading
        vim.cmd("colorscheme kanagawa")
	end
}
