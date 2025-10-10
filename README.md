# Ash_Enhanced_Hyprland
My personal *Hyrpland setup and dotfiles*, the overall design have more focus on dynamic colors using pywal (there are other tools out there but pywal seems to be more familiar), the requirements to have the same setup are: 
	1. Nerd font: ["MartianMono Nerd Font"](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/MartianMono.zip)
	2. Mouse cursor: [Future-cyan cursors](https://www.gnome-look.org/p/1465392)
	3. Icons pack: [Dracula icons](https://www.gnome-look.org/p/1541561)
	4. Gtk theme: [Abyss ink](https://www.gnome-look.org/p/1324963)
	5. Install **Pywal** (you can choose another tool but you will need to change the scripts in this dotfiles that uses pywal to adapt with you favorite tool)
	6. Install **Rofi** *to show apps menu and wallpaper menu and music/audio menu and power-menu*
		6.1. Add your wallpapers to this path "~/Pictures/Wallpapers"
		6.2. Add your audio files to this path "~/Music/My-Plylist"
	7. Install **Wofi** (used in this setup to show keybindings menu to help you remember what keybinds you use to do this or that, you can edit the file that contains the keybinds in this path "~/.config/hypr/keybinds.txt")
	8. Install **Cava** (optional), if you want to have the cava module to work in waybar when you lay some audio
	9. Install **playerctl** so you can see audio informations in waybar (optional, you can skip it if you want to keep waybar clean)
	10. Install **NetworkManager-applet** to control your networks (you can use another tool for that if you want but you will need to adjust the waybar config.jsonc file and style.css to adapt with the new tool's module)
	11. Install **SwayNC** for notification center (optional, you can use dunst or any other notification daemon, but again you will need to adjust the waybar config.jsonc file to remove swaync module and add your favorite notfication's daemon module)
	12. Install **Pavucontrol**
	13. Activate the script files in the the recommended diretories below to activate the scripts using this command "chmod +x *.sh", those are the directories that contains the scripts (**WARNING: Some of thos scripts meant for generating and applying pywal colors, if you don't use pywal at all or if you use another tools please feel free to adjust them as you want**):
		13.1. ~/.config/hypr/scripts
		13.2. ~/.config/rofi/rofi-scripts 
		13.3. ~/.config/waybar 
		13.4. ~/.config/waybar/scripts
		13.5. ~/.config/wal 
	14. Install **zsh** and [starship](https://starship.rs/guide/) (optional, you can use fish or whatever shell you like)
	15. 

---