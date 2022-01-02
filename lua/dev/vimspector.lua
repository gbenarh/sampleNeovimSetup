local status_ok, spector = pcall(require, "vimspector")
if not status_ok then
	return
end

vim.g.vimspector_enable_mappings = 'HUMAN'

