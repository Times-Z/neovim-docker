local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
    return
end

local options = {
    ensure_installed = {"bash", "comment", "css", "dockerfile", "go", "gomod", "graphql", "hcl", "java", "javascript",
                        "jsdoc", "json", "html", "lua", "php", "python", "yaml"},
    -- , "tsx", "typescript", "vue", "scss", "rust"
    highlight = {
        enable = true,
        use_languagetree = true
    }
}

-- check for any override
options = require("core.utils").load_override(options, "nvim-treesitter/nvim-treesitter")

treesitter.setup(options)

