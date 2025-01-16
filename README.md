# notnix
Nix-like package manager, but not really  

it tracks the packages that you install in config.lua then install it using your package manager, so it's basically a wrapper

## Usage
```sh
git clone --depth=1 https://github.com/kkkfasya/notnix
chmod +x notnix
./notnix
```
Run ```./notnix``` to install/remove files according to listed packages, or run ```./notnix -h``` to see help msg   
Also you can use the minifed version in ```minifed/notnix``` (psst it's 70% smaller)  
This program respect $XDG_CONFIG_HOME of course :sunglasses:  
## Config
Check at ```$HOME/.config/notnix/config.lua``` or ```$XDG_CONFIG_HOME/notnix/config.lua```

```lua
local Config = {}

-- list of all pkgs that want to be installed
-- to remove package simply remove it from this list.
-- [field-type]    : string
Config.pkgs = {
    "neovim",
}

-- change according to pkg manager & must include sudo
-- e.g "sudo apt install" for debian-based distro
-- [type]    : string
-- [default] : "sudo dnf <command>"
Config.install = "sudo dnf install"
Config.remove = "sudo dnf remove"
Config.upgrade = "sudo dnf upgrade"

-- no more Y/n confirmation before install/remove
-- [type]    : boolean
-- [default] : false
Config.assume_yes_install = false
Config.assume_yes_remove = false

return Config
```

## Tips
1. Make a shell alias for easier config access  
put this in your zshrc or bashrc (sorry non-posix shell, yall suckass)
```zsh
alias pkg='nvim $HOME/.config/notnix/config.lua' # i use neovim btw
#alias pkg='nvim $XDG_CONFIG_HOME/notnix/config.lua' # or this
```
2. you can move notnix to ```$HOME/.local/bin/``` so you (user) can call it from anywhere  
3. delete this directory, it's now finished, save some space #diskspacematters

## Downside
1. Some packages such as fortune when installed will install fortune-mod instead (on Fedora), the name doesnt match so when it's removed (e.g sudo dnf remove fortune), it fails to do so (i'm blaming Fedora for this).  
To fix this... just type the correct name, bro.  
2. Minified version doesn't include chud, it's so over
> minified/notnix is minified using [luamin](https://github.com/mathiasbynens/luamin)  
> one day i'll minify it myself using my own minifier (fully written in lua ofc)
