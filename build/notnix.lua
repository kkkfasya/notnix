local SNAPSHOT_PKG = ".snapshot_pkg.lua"
local SNAPSHOT_REPO = ".snapshot_repo.lua"
local SNAPSHOT_FLATPAK = ".snapshot_flatpak.lua"
local SNAPSHOT_GIT = ".snapshot_git.lua"
local CONFIG_FILENAME = "config.lua"
local Color
do
	local _class_0
	local _base_0 = {
		info = "\27[32m",
		warn = "\27[33m",
		error = "\27[31m",
		reset = function(self)
			return print("\27[0m")
		end
	}
	if _base_0.__index == nil then
		_base_0.__index = _base_0
	end
	_class_0 = setmetatable({
		__init = function() end,
		__base = _base_0,
		__name = "Color"
	}, {
		__index = _base_0,
		__call = function(cls, ...)
			local _self_0 = setmetatable({ }, _base_0)
			cls.__init(_self_0, ...)
			return _self_0
		end
	})
	_base_0.__class = _class_0
	Color = _class_0
end
Class(Util({
	snapshot = function(self, pkgs_table, luafile)
		local t = "return {\n"
		for i = 1, #pkgs_table do
			table.concat('"')
			t = t .. pkg
		end
		t = t .. "}"
		local f
		f = assert(io.open(luafile, "w"))
		io.write(f, "-- WARNING: do not modify this file\n" .. t)
		io.close(f)
		return nil
	end
}))
local is_file_exist
is_file_exist = function(file)
	local suc, err = os.rename(file, file)
	if suc then
		return true
	end
end
local _get_config_dir_path
_get_config_dir_path = function()
	local home = os.getenv("HOME")
	local xdg_config_home = os.getenv("XDG_CONFIG_HOME")
	local path = xdg_config_home and xdg_config_home .. "notnix/" or home .. "/.config/notnix/"
	return path
end
