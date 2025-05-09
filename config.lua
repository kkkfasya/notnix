local Config = {}

-- list of all pkgs that want to be installed
-- to remove package simply remove it from this list.
-- [field-type]     : string
Config.pkgs = {
    -- "neovim", -- use neovim btw
}

-- flatpak pkgs
-- INFO: please configure flathub repo before using this
-- [field-type]     : string
Config.flatpaks = {

}

-- for adding extra repo like copr, ppa, and so on
-- [field-type]     : string
Config.repos = {
    -- "bieszczaders/kernel-cachyos" -- try cachyos kernel, it's nice
}

-- change according to pkg manager & must include sudo
-- e.g "sudo apt install" for debian-based distro
-- [type]    : string
-- [default] : "sudo dnf <command>"
Config.install = "sudo dnf install"
Config.remove = "sudo dnf remove"
Config.upgrade = "sudo dnf upgrade"

Config.add_repo = "sudo dnf copr enable"
Config.remove_repo = "sudo dnf copr remove"
Config.update_cache = "sudo dnf mc"

-- no more Y/n confirmation before install/remove
-- [type]    : boolean
-- [default] : false
Config.assume_yes_install = false
Config.assume_yes_remove = false

return Config
