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
This program respect $XDG_CONFIG_HOME of course :sunglasses:  

## Config
Check at ```$HOME/.config/notnix/config.lua``` or ```$XDG_CONFIG_HOME/notnix/config.lua``` for more detail

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
