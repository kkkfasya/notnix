# notnix
Nix-like package manager, but not really  

It's a wrapper for your distro package manager, bringing nix-like functionality where package is installed according to your config file.  
This also works for flatpak package, and you can also add extra repo such as COPR or PPA

## Usage
```sh
git clone --depth=1 https://github.com/kkkfasya/notnix
chmod +x notnix
./notnix
```
Run ```./notnix``` to initiate the program, then you'll see a config.lua file in ```$HOME/.config/notnix/config.lua``` (or  ```$XDG_CONFIG_HOME/notnix/config.lua```)  
Add the program name to config.lua to install it, and simply remove the program name from the list to remove it.  
Run ```./notnix -h``` to see extra options.

## Config
This is an overview of the config file
```lua
local Config = {}

Config.pkgs = {}

Config.flatpaks = {}

Config.repos = {}

Config.install = "sudo dnf install"
Config.remove = "sudo dnf remove"
Config.upgrade = "sudo dnf upgrade"

Config.add_repo = "sudo dnf copr enable"
Config.remove_repo = "sudo dnf copr remove"
Config.update_cache = "sudo dnf makecache"

Config.assume_yes_install = false
Config.assume_yes_remove = false

return Config
```
Check the example/ for some examples and tips

## Tips
1. Make a shell alias for easier config access  
put this in your zshrc or bashrc (or according to your shell)
```sh
alias pkg='nvim $HOME/.config/notnix/config.lua' # i use neovim btw
#alias pkg='nvim $XDG_CONFIG_HOME/notnix/config.lua' # or this
```
2. run ```chmod +x ./install.sh && ./install.sh``` to move notnix to ```$HOME/.local/bin/``` so you (user) can call it from anywhere 
3. delete this directory, it's now finished, save some space #diskspacematters

## Downside
1. Some packages such as fortune when installed will install fortune-mod instead (on Fedora), the name doesnt match so when it's removed (e.g sudo dnf remove fortune), it fails to do so (i'm blaming Fedora for this).  
To fix this... just type the "real" name, bro.  
