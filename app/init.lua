-- example file i.e lua/custom/init.lua
-- MAPPINGS
local map = require("core.utils").map
map("n", "<leader>,", ":RnvimrToggle <CR>")
map("n", "<leader>,,", ":RnvimrResize <CR>")
map("n", "<leader>;", ":NvimTreeToggle <CR>")
map("n", "<leader>q", ":q <CR>")
-- require("my autocmds file") or just declare them here