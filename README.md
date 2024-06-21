# All My Configurations:)
## Screenshots
![Screenshot](https://github.com/ShibamRoy9826/Dotfiles/blob/main/screenshots/Img1.png)
![Screenshot2](https://github.com/ShibamRoy9826/Dotfiles/blob/main/screenshots/Img2.jpg)
![Screenshot3](https://github.com/ShibamRoy9826/Dotfiles/blob/main/screenshots/Img-3.jpg)

## Dependencies
These are some dependencies you may want to have if you want exact setup as mine:

1. playerctl
2. brightnessctl
3. nacli (You probably have that already...)
4. kitty (For neofetch image support, A few others may also work)
5. rofi
6. polybar
7. picom (I am using Jonaburg's fork)
8. neofetch
9. i3 (I am using i3 as my wm)
10. betterlockscreen (You can use i3lock if you want, but make sure to tweak the powermenu.sh in that case)
11. A nerd font (for the polybar glyphs, you can use JetBrainsMono Nerd Font for ex.)
13. Oh My Zsh & Powerlvl10k
14. Thunar File manager
15. xcolor (For color picking)
16. xclip & scrot (For screenshots and clipboard)
17. autotiling (Optional, if you dont want it, remove last line from i3 config)
18. i3-gaps

## Other Applications used in the screenshot
1. pipes.sh
2. unimatrix
3. cava
4. sl
5. lolcat( the gradient color)
6. figlet
7. Neovim (with NvChad)

## Kitty Theme:
- [Catpuccin-Mocha theme](https://github.com/catppuccin/kitty)

## Neovim Theme:
- The inbuilt Catpuccin Mocha theme (I am using NvChad)

## Polybar theme inspiration:
1. [polybar-themes](https://github.com/adi1090x/polybar-themes)
2. [arkzuse-polybar-theme](https://github.com/arkzuse/polybar-theme)

## Walpaper Sources that i generally use:
1. [CyberSnake-Wallpapers](https://github.com/Cybersnake223/Hypr)
2. [Dharmx-walls](https://github.com/dharmx/walls)
3. [Kitsunebishi-Wallpapers](https://github.com/kitsunebishi/Wallpapers)

## Instructions
### Setting up polybar
1. First of all , You will need to have polybar installed ofcourse, which you can download from [here](https://github.com/polybar/polybar).
You will also need to have rofi installed. Here's the [download link](https://github.com/davatorium/rofi). Make sure to install the other dependencies mentioned above too, so that all the modules work.
2. Now you need to clone this repo:
```bash
git clone https://github.com/ShibamRoy9826/Dotfiles.git
```
3. Once you're done, run these commands on your terminal:
```bash
mv Dotfiles/polybar ~/.config/polybar/mytheme
```
This will copy all my config to your polybar config directory.

4. Now you can simply launch polybar, using this:
```bash
~/.config/polybar/mytheme/launch.sh
```
5. Now you need to change a few things in the configuration.
- Run the following command:
```bash
ls sys/class/power_supply
```
- Notice your acpi names, it should be like BAT0, and ADP0 or something like that.
- Now open up the config(you can use some other editor instead of neovim):
```bash
nvim ~/.config/polybar/mytheme/config.ini
```
- Scroll down to the battery module, and change the Adapter and Battery variable:(replace the names)
```
battery=BAT0
adapter=ADP1
```
- You also need to change the network module

That's it for the polybar:)

### i3 setup
That's pretty much simple!
You need to install some applications including [kitty](https://sw.kovidgoyal.net/kitty/), [thunar](https://wiki.archlinux.org/title/Thunar),[scrot](https://github.com/resurrecting-open-source-projects/scrot),[i3-gaps](https://github.com/yurimaster2112/i3-gaps),[feh](https://github.com/derf/feh), [autotiling](https://github.com/nwg-piotr/autotiling)
 , [xcolor](https://archlinux.org/packages/extra/x86_64/xcolor/), And [Picom](https://github.com/lcdse7en/jonaburg-picom).
if you dont want these applications, you may need to comment out a few lines in the i3, config, it should still work even if you dont comment out these lines i guess.

Just run the following commands(make sure to backup your current config if you have any)
```bash
mv ~/Dotfiles/i3/config ~/.config/i3/config
```
You may also want to set a wallpaper, its almost at the end of the file, you can edit the image path there.
```bash
nvim ~/.config/picom.conf
```
and that's it! just press Mod+Shift+C to reload your config:)

## Picom Setup
Ofcourse you need to have picom installed first, there are several forks, but you can try [this](https://github.com/lcdse7en/jonaburg-picom) one out.Just run this command(make sure to backup your config):
```bash
mv ~/Dotfiles/picom/picom.conf ~/.config/picom.conf
```
and Done! as simple as that!

## Neofetch
You need to have neofetch installed first, and then just run this:(Make sure to backup your config)
```bash
mv ~/Dotfiles/neofetch/config.conf ~/.config/neofetch/config.conf
```
That's all!

## Thank you for reading! Please star this repo if you like it:)
If you think there's any problem with the config, please open up an issue.

