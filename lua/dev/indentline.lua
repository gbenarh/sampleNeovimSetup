local status_ok, indent_blankline = pcall(require, "indent_blankline")
if not status_ok then
	return
end

vim.g.indent_blankline_buftype_exclude = { "terminal", "nofile" }
vim.g.indent_blankline_filetype_exclude = {
	"help",
	"startify",
	"dashboard",
	"packer",
	"neogitstatus",
	"NvimTree",
	"Trouble",
}
vim.g.indentLine_enabled = 1
-- vim.g.indent_blankline_char = "│"
vim.g.indent_blankline_char = "▏"
-- vim.g.indent_blankline_char = "▎"
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = true
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
	"class",
	"return",
	"function",
	"method",
	"^if",
	"^while",
	"jsx_element",
	"^for",
	"^object",
	"^table",
	"block",
	"arguments",
	"if_statement",
	"else_clause",
	"jsx_element",
	"jsx_self_closing_element",
	"try_statement",
	"catch_clause",
	"import_statement",
	"operation_type",
}
-- HACK: work-around for https://github.com/lukas-reineke/indent-blankline.nvim/issues/59
vim.wo.colorcolumn = "99999"

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#60141a gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent2 guifg=#614613 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent3 guifg=#2f451f gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent4 guifg=#461554 gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent5 guifg=#1b474c gui=nocombine]]
vim.cmd [[highlight IndentBlanklineIndent6 guifg=#09365b gui=nocombine]]

-- Background color has guibg. TODO: find a way to use alpha channel with #hex
-- vim.cmd [[highlight IndentBlanklineIndent7 guibg=#1f1f1f gui=nocombine]]
-- vim.cmd [[highlight IndentBlanklineIndent8 guibg=#1a1a1a gui=nocombine]]

indent_blankline.setup({
	show_current_context = true,
  char_highlight_list = {
    "indentblanklineindent1",
    "indentblanklineindent2",
    "indentblanklineindent3",
    "indentblanklineindent4",
    "indentblanklineindent5",
    "indentblanklineindent6",
  },
})
