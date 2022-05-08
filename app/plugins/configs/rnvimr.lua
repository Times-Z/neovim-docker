local g = vim.g

g.rnvimr_enable_ex = 1
g.rnvimr_enable_picker = 1
g.rnvimr_enable_bw = 1
g.rnvimr_edit_cmd = "drop"
g.rnvimr_presets = nil
g.rnvimr_ranger_cmd = "ranger --cmd='set draw_borders both'"
-- g.rnvimr_layout = {
--     relative = "editor",
--     width = vim.fn.winwidth(0),
--     height = vim.fn.winheight(0),
--     col = 0,
--     row = 0,
--     style = "minimal"
-- }
vim.cmd("highlight link RnvimrNormal CursorLine")
