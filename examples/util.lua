-- Or you can seperate the add_module function to a seperate file for cleaner looks

local M = {}

---@param modules table<table<string>>
---@return string[]...
function M.add_module(modules)
	local t = {}
	for _, i in ipairs(modules) do
		for _, j in ipairs(i) do
			table.insert(t, j)
		end
	end
	return table.unpack(t)
end

return M
