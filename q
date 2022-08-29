[1mdiff --git a/nvim/.config/nvim/lua/user/plugins.lua b/nvim/.config/nvim/lua/user/plugins.lua[m
[1mindex 5728811..84baa1a 100644[m
[1m--- a/nvim/.config/nvim/lua/user/plugins.lua[m
[1m+++ b/nvim/.config/nvim/lua/user/plugins.lua[m
[36m@@ -108,7 +108,8 @@[m [mreturn packer.startup(function(use)[m
   --git[m
   use "lewis6991/gitsigns.nvim" [m
 [m
[31m-  use "nvim-orgmode/orgmode"[m
[32m+[m[32m  --organisation[m
[32m+[m[32m  use "dhruvasagar/vim-dotoo"[m
   -- Automatically set up your configuration after cloning packer.nvim[m
   -- Put this at the end after all plugins[m
   if PACKER_BOOTSTRAP then[m
[1mdiff --git a/nvim/.config/nvim/plugin/packer_compiled.lua b/nvim/.config/nvim/plugin/packer_compiled.lua[m
[1mindex 1dcbf74..38e0717 100644[m
[1m--- a/nvim/.config/nvim/plugin/packer_compiled.lua[m
[1m+++ b/nvim/.config/nvim/plugin/packer_compiled.lua[m
[36m@@ -224,11 +224,6 @@[m [m_G.packer_plugins = {[m
     path = "/home/patatone/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",[m
     url = "https://github.com/kyazdani42/nvim-web-devicons"[m
   },[m
[31m-  orgmode = {[m
[31m-    loaded = true,[m
[31m-    path = "/home/patatone/.local/share/nvim/site/pack/packer/start/orgmode",[m
[31m-    url = "https://github.com/nvim-orgmode/orgmode"[m
[31m-  },[m
   ["packer.nvim"] = {[m
     loaded = true,[m
     path = "/home/patatone/.local/share/nvim/site/pack/packer/start/packer.nvim",[m
[36m@@ -259,6 +254,11 @@[m [m_G.packer_plugins = {[m
     path = "/home/patatone/.local/share/nvim/site/pack/packer/start/telescope.nvim",[m
     url = "https://github.com/nvim-telescope/telescope.nvim"[m
   },[m
[32m+[m[32m  ["vim-dotoo"] = {[m
[32m+[m[32m    loaded = true,[m
[32m+[m[32m    path = "/home/patatone/.local/share/nvim/site/pack/packer/start/vim-dotoo",[m
[32m+[m[32m    url = "https://github.com/dhruvasagar/vim-dotoo"[m
[32m+[m[32m  },[m
   ["vim-illuminate"] = {[m
     loaded = true,[m
     path = "/home/patatone/.local/share/nvim/site/pack/packer/start/vim-illuminate",[m
