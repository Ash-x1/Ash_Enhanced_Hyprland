# Ash_Enhanced_Hyprland

My personal *Hyprland setup and dotfiles*. The overall design focuses on dynamic colors using **pywal** (there are other tools, but pywal is used in these dotfiles). The requirements to reproduce the same setup are:

1. **Nerd font:** [MartianMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/MartianMono.zip)

2. **Mouse cursor:** [Future-cyan cursors](https://www.gnome-look.org/p/1465392)

3. **Icons pack:** [Dracula icons](https://www.gnome-look.org/p/1541561)

4. **GTK theme:** [Abyss ink](https://www.gnome-look.org/p/1324963)

5. **Install Pywal** (you can choose another tool but you will need to update the scripts in these dotfiles that use pywal).

6. **Install Rofi** — used for apps menu, wallpaper menu, music/audio menu and power menu.

   1. Add your wallpapers to `~/Pictures/Wallpapers`.
   2. Add your audio files to `~/Music/My-Playlist`.

7. **Install Wofi** — used in this setup to show keybindings menu. Edit the file containing keybinds at `~/.config/hypr/keybinds.txt`.

8. **Install Cava** (optional) — required if you want the cava module to work in waybar while audio is playing.

9. **Install playerctl** (optional) — to show audio information in waybar (skip if you prefer a minimal waybar).

10. **Install NetworkManager-applet** — to control networks. If you use a different network tool, adjust `waybar/config.jsonc` and `style.css` to match the module of your chosen tool.

11. **Install SwayNC** for the notification center (optional). You may use `dunst` or another notification daemon, but then update `waybar/config.jsonc` to remove the swaync module and add your preferred notification module.

12. **Install Pavucontrol**.

13. **Make the script files executable** in the recommended directories by running:

```bash
chmod +x ~/.config/hypr/scripts/*.sh
chmod +x ~/.config/rofi/rofi-scripts/*.sh
chmod +x ~/.config/waybar/scripts/*.sh
chmod +x ~/.config/wal/*.sh
```

> **Warning:** Some of these scripts generate and apply pywal color schemes. If you don't use pywal or you use another tool, adjust the scripts accordingly.

Recommended directories that may contain scripts used by this setup:

* `~/.config/hypr/scripts`
* `~/.config/rofi/rofi-scripts`
* `~/.config/waybar`
* `~/.config/waybar/scripts`
* `~/.config/wal`

14. **Install zsh** and [starship](https://starship.rs/guide/) (optional — you may use `fish` or any shell you prefer).

---

## Notes & Tips

* If any numbered list appears inside a scrollable box with a copy button on GitHub, that usually means the list lines were indented with a tab or multiple leading spaces, which GitHub treats as a code block. Make sure list items have no leading tabs. Use plain lines for top-level list items and indent nested lists by 4 spaces.

* Ensure the file is saved as plain text with Unix line endings (`LF`) and encoded in UTF-8.

* Example of correct list formatting (no leading tab):

```markdown
1. First item
2. Second item
    1. Nested first
    2. Nested second
```

This file is formatted to display correctly on GitHub.
