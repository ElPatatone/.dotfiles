vim.g.rout_follow_colorscheme = 1 -- Doesn't seem to work
vim.g.R_commented_lines = 1 -- Include commented lines when sending to console
vim.g.R_clear_line = 1 -- Delete existing stuff on command line before sending command to R
vim.g.R_rmd_environment = "new.env()" -- compile .Rmd in a fresh environment

vim.g.R_debug = 0 -- Don't jump to the line being debugged by browser()

-- Highlight chunk headers as R code
vim.g.rrst_syn_hl_chunk = 1
vim.g.rmd_syn_hl_chunk = 1

vim.cmd([[
let g:multiline =<< EOF
if $DISPLAY != ""
  let R_openpdf = 1
  let R_openhtml = 1
endif
EOF
]])

vim.g.R_csv_app = "tmux new-window vd" -- view data frames in visidata

vim.g.R_pdfviewer = "zathura"
vim.g.R_insert_mode_cmds = 0 -- Don't use Nvim-R commands in insert mode
vim.g.R_nvim_wd = 1 -- Use the Nvim working directory, not that of the file
vim.g.r_syntax_folding = 1
vim.g.Rout_more_colors = 0 -- don't highlight R commands in output as they are in scripts
vim.g.rmd_fenced_languages = { "r", "python" }
vim.g.markdown_fenced_languages = { "r", "python" }
vim.g.R_non_r_compl = 0 -- use omni completion provided by another plugin

-- Glimpse an object
vim.api.nvim_set_keymap(
	"n",
	"<LocalLeader>gl",
	':call RAction("dplyr::glimpse")<CR>',
	{ noremap = true, silent = true }
)

-- Print all rows of a data frame
vim.api.nvim_set_keymap(
	"n",
	"<LocalLeader>rP",
	':call RAction("pillar:::print.tbl(tibble::as_tibble", ", NULL), n = Inf")<CR>',
	{ noremap = true, silent = true }
)

-- tags
vim.cmd("autocmd FileType r set tags+=~/.cache/Nvim-R/Rtags,~/.cache/Nvim-R/RsrcTags")
vim.cmd("autocmd FileType rmd set tags+=~/.cache/Nvim-R/Rtags,~/.cache/Nvim-R/RsrcTags")
vim.cmd("autocmd FileType rrst set tags+=~/.cache/Nvim-R/Rtags,~/.cache/Nvim-R/RsrcTags")
vim.cmd("autocmd FileType rnoweb set tags+=~/.cache/Nvim-R/Rtags,~/.cache/Nvim-R/RsrcTags")

-- Close R without saving on vim exit
vim.cmd(
	'autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function(\'SendCmdToR_fake\')" | call RQuit("nosave") | endif'
)
