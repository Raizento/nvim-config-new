require("raizento.launch")
require("raizento.core.options")
require("raizento.core.keymap")

spec("raizento.plugins.onedark")
spec("raizento.plugins.web-devicons")
spec("raizento.plugins.treesitter")
spec("raizento.plugins.autopairs")
spec("raizento.plugins.telescope")
spec("raizento.plugins.tmux-navigation")
spec("raizento.plugins.markdown-preview")
spec("raizento.plugins.cmp")
spec("raizento.plugins.lualine")
spec("raizento.plugins.indent-blankline")
spec("raizento.plugins.gitsigns")
spec("raizento.plugins.lazygit")
spec("raizento.plugins.oil")
spec("raizento.plugins.transparent")
spec("raizento.plugins.which-key")

-- TODO maybe create another table for these lsp plugins
spec("raizento.lsp.lazydev")
spec("raizento.lsp.nvim-java")
spec("raizento.lsp.rustacean")

spec("raizento.lsp.lspconfig")
spec("raizento.lsp.mason")

require("raizento.lazy")
