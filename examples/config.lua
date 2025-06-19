local Config = {}

local php_pkgs = dofile("./modules/php.lua")
local cachyos_pkgs = dofile("./modules/cachyos.lua")

-- this is the beauty of using real programming language as a config language
---@param modules table<table<string>>
---@return string[]...
local function add_module(modules)
	local t = {}
	for _, i in ipairs(modules) do
		for _, j in ipairs(i) do
			table.insert(t, j)
		end
	end
	return table.unpack(t)
end

Config.pkgs = {
	"neovim",
	"snapper",
	"ghostty", -- this pkg is from extra repo, a copr repo from pgdev/ghostty

	-- example of modular config
	add_module({
		php_pkgs,
		cachyos_pkgs,
	}),
	-- why do this? if you so happen to have similiar packages/dependencies it's cleaner this way
	-- and also it's easier to remove instead of deleting bunch of items
}

Config.flatpaks = {
	"org.signal.Signal",
	"fm.reaper.Reaper",
}

Config.repos = {
	"pgdev/ghostty",
}

-- all pkg-manager commands must include sudo
-- this default config is for fedora since that's what i use
-- but this is pkg-manager agnostic, since this program act as a wrapper
Config.install = "sudo dnf install"
Config.remove = "sudo dnf remove"
Config.upgrade = "sudo dnf upgrade"

Config.add_repo = "sudo dnf copr enable"
Config.remove_repo = "sudo dnf copr remove"
Config.update_cache = "sudo dnf makecache"

Config.assume_yes_install = false
Config.assume_yes_remove = false

return Config
