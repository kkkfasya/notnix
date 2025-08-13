-- this is to add current notnix/ config dir and modules/ dir to package.path so lua require() can search for modules here
local confdir = debug.getinfo(1, "S").source:sub(2):match("^(.-notnix[/\\])")
package.path = ("%s;%s/?.lua;%s/modules/?.lua"):format(package.path, confdir, confdir)

local Config = {}

Config.pkgs = {
	"neovim",
	"snapper",
	"ghostty", -- this pkg is from extra repo, a copr repo from pgdev/ghostty

	-- example of modular config

	-- NOTE: must be put at the end otherwise wouldn't return all
	-- iterables items because fuck you
	require("util").add_module({
		require("modules.php"),
		require("modules.dnf-plugins"),
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
