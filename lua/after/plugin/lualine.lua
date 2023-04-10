local present, lualine = pcall(require,"lualine")

if not present then
	return
end

lualine.setup{
    options = {
        icons_enabled = true,
        theme = 'rose-pine',
        component_separators = '|',
        section_separators = '',
    },
    sections = {
        lualine_a = {
            {
                'buffers'
            }
        }
    },
}
