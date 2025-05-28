--- @class Config
--- @field pkgs string[] List of packages to install; remove packages from this list to uninstall
--- @field flatpaks string[] List of Flatpak packages; please configure Flathub repository before using this
--- @field repos string[] List of extra repositories (e.g., COPR, PPA)
--- @field install string Package manager install command (e.g., "sudo dnf install ")
--- @field remove string Package manager remove command (e.g., "sudo dnf remove ")
--- @field upgrade string Package manager upgrade command (e.g., "sudo dnf upgrade")
--- @field add_repo string Command to add repository (e.g., "sudo dnf copr enable")
--- @field remove_repo string Command to remove repository (e.g., "sudo dnf copr remove")
--- @field update_cache string Command to update package manager cache (e.g., "sudo dnf makecache")
--- @field assume_yes_install boolean If true, skips confirmation for installs; default: false
--- @field assume_yes_remove boolean If true, skips confirmation for removals; default: false
local Config = {}

Config.pkgs = {
    -- "neovim", -- use neovim btw
}

Config.flatpaks = {}

Config.repos = {
    -- "bieszczaders/kernel-cachyos" -- try cachyos kernel, it's nice
}

Config.install = "sudo dnf install"
Config.remove = "sudo dnf remove"
Config.upgrade = "sudo dnf upgrade"

Config.add_repo = "sudo dnf copr enable"
Config.remove_repo = "sudo dnf copr remove"
Config.update_cache = "sudo dnf makecache"

Config.assume_yes_install = false
Config.assume_yes_remove = false

return Config
