
local M = {}

M.theme = 'doom'
M.config = {
   header = {
         "                                   ",
         "                                   ",
         "                                   ",
         "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
         "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
         "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
         "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
         "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
         "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
         "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
         " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
         " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
         "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
         "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
         "                                   ",
      },
   center = {
         {
            icon = " ",
            desc = "Find File                                    ",
            key = "space f f",
            action = "Telescope find_files"
         },
         {
            icon = " ",
            desc = "Recents                                      ",
            key = "space f o",
            action = "Telescope oldfiles"
         },
         {
            icon = " ",
            desc = "Find Word                                    ",
            key = "space f w",
            action = "Telescope live_grep"
         },
         {
            icon = "洛 ",
            desc = "New File                                    ",
            key = "space f n",
            action = "DashboardNewFile"
         },
         {
            icon = "🗀 ",
            desc = "File Browser                                ",
            key = "space ,",
            action = "RnvimrToggle"
         },
         {
            icon = "➤ ",
            desc = "three toogle                                ",
            key = "space ;",
            action = "NvimTreeToggle"
         }
       },
   footer = {
         "    Deleted code is debugged code.    ",
         "           _ ._  _ , _ ._             ",
         "         (_ ' ( `  )_  .__)           ",
         "       ( (  (    )   `)  ) _)         ",
         "      (__ (_   (_ . _) _) ,__)        ",
         "          `~~`\\ ' . /`~~`            ",
         "               ;   ;                  ",
         "               /   \\                 ",
         "______________/_ __ \\________________",
   }
}

M.hide = {
   statusline = false,
   tabline = true,
   winbar = true
}

return M


-- local db = require('dashboard')

-- db.custom_header = {
--    "                                   ",
--    "                                   ",
--    "                                   ",
--    "   ⣴⣶⣤⡤⠦⣤⣀⣤⠆     ⣈⣭⣿⣶⣿⣦⣼⣆          ",
--    "    ⠉⠻⢿⣿⠿⣿⣿⣶⣦⠤⠄⡠⢾⣿⣿⡿⠋⠉⠉⠻⣿⣿⡛⣦       ",
--    "          ⠈⢿⣿⣟⠦ ⣾⣿⣿⣷    ⠻⠿⢿⣿⣧⣄     ",
--    "           ⣸⣿⣿⢧ ⢻⠻⣿⣿⣷⣄⣀⠄⠢⣀⡀⠈⠙⠿⠄    ",
--    "          ⢠⣿⣿⣿⠈    ⣻⣿⣿⣿⣿⣿⣿⣿⣛⣳⣤⣀⣀   ",
--    "   ⢠⣧⣶⣥⡤⢄ ⣸⣿⣿⠘  ⢀⣴⣿⣿⡿⠛⣿⣿⣧⠈⢿⠿⠟⠛⠻⠿⠄  ",
--    "  ⣰⣿⣿⠛⠻⣿⣿⡦⢹⣿⣷   ⢊⣿⣿⡏  ⢸⣿⣿⡇ ⢀⣠⣄⣾⠄   ",
--    " ⣠⣿⠿⠛ ⢀⣿⣿⣷⠘⢿⣿⣦⡀ ⢸⢿⣿⣿⣄ ⣸⣿⣿⡇⣪⣿⡿⠿⣿⣷⡄  ",
--    " ⠙⠃   ⣼⣿⡟  ⠈⠻⣿⣿⣦⣌⡇⠻⣿⣿⣷⣿⣿⣿ ⣿⣿⡇ ⠛⠻⢷⣄ ",
--    "      ⢻⣿⣿⣄   ⠈⠻⣿⣿⣿⣷⣿⣿⣿⣿⣿⡟ ⠫⢿⣿⡆     ",
--    "       ⠻⣿⣿⣿⣿⣶⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⡟⢀⣀⣤⣾⡿⠃     ",
--    "                                   ",
-- }

-- db.hide_statusline = False
-- db.dashboard_disable_at_vimenter = 0
-- db.dashboard_disable_statusline = 1
-- db.dashboard_default_executive = "telescope"

-- db.custom_center = {
   -- {
   --    icon = "  ",
   --    desc = "Find File                                   ",
   --    shortcut = "space f f",
   --    action = "Telescope find_files"
   -- },
   -- {
   --    icon = " ",
   --    desc = "Recents  ",
   --    shortcut = "space f o",
   --    action = "Telescope oldfiles"
   -- },
   -- {
   --    icon = " ",
   --    desc = "Find Word",
   --    shortcut = "space f w",
   --    action = "Telescope live_grep"
   -- },
   -- {
   --    icon = "洛 ",
   --    desc = "New File",
   --    shortcut = "space f n",
   --    action = "DashboardNewFile"
   -- },
   -- {
   --    icon = "🗀 ",
   --    desc = "File Browser                                   ",
   --    shortcut = "space ,",
   --    action = "RnvimrToggle"
   -- },
   -- {
   --    icon = "➤ ",
   --    desc = "three toogle                                   ",
   --    shortcut = "space ;",
   --    action = "NvimTreeToggle"
   -- }
-- }

-- db.custom_footer = {
--    "    Deleted code is debugged code.    ",
--    "           _ ._  _ , _ ._             ",
--    "         (_ ' ( `  )_  .__)           ",
--    "       ( (  (    )   `)  ) _)         ",
--    "      (__ (_   (_ . _) _) ,__)        ",
--    "          `~~`\\ ' . /`~~`            ",
--    "               ;   ;                  ",
--    "               /   \\                 ",
--    "______________/_ __ \\________________",

-- }
