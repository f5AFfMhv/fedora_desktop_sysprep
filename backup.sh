#!/bin/bash -e

# Collects information about various installed packages,
# backup user dotfiles.

function hc_ping {
    # Send ping with exit status to healthchecks service
    curl --retry 3 https://hc-ping.com/$HC_FEDORA/$?
}

# Send ping to healthchecks service on exit
trap hc_ping EXIT

# DNF repositories
cat /etc/yum.repos.d/* > backup/repo_list.txt
# DNF packages
dnf list --installed | grep -v anaconda | awk '{print $1}' | sed '1d' > backup/rpm_list.txt
# Flatpak packages
flatpak list --app --columns=application > backup/flatpak_list.txt
# Appimages
find ~ -type f -name '*.AppImage' -printf "%f\n" 2>/dev/null | sort -u > backup/appimage_list.txt
# Python modules
pip list | awk '{print $1}' | sed '1d;2d' > backup/python_list.txt
# User crontab
crontab -l > backup/user_crontab.txt

# Backup dotfiles
DOTFILES="
zshrc
zshenv
vimrc
p10k.zsh
alias.zsh
alacritty.toml
gtkrc-2.0
gtk-3.0
gtk-4.0
hypr
ml4w
nwg-dock-hyprland
qt6ct
rofi
sidepad
swaync
waybar
waypaper
wlogout
xsettingsd
fastfetch
"

for dfile in $DOTFILES; do
    cp -r -f ~/.config/${dfile} dotfiles/
done

# Push backup to repo
# nr_of_changes=$(git status --porcelain | wc -l)
# if [ "$nr_of_changes" -gt "0" ]; then
#     git commit -am "backup $(date +%Y-%m-%d)"
#     git push -u origin hyprland
# fi