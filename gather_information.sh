# Collects information about installed packages,
# gnome plugins, enabled repositories, etc.

# DNF repositories
cat /etc/yum.repos.d/* > package_backup/repo_list.txt
# DNF packages
dnf list installed | awk '{print $1}' | sed '1d' > package_backup/rpm_list.txt
# Flatpak packages
flatpak list --columns=application > package_backup/flatpak_list.txt
# Appimages
find ~ -type f -name '*.AppImage' -printf "%f\n" 2>/dev/null | sort -u > package_backup/appimage_list.txt
# Python modules
pip list | awk '{print $1}' | sed '1d;2d' > package_backup/python_list.txt
# Gnome extensions
gnome-extensions list --enabled > package_backup/gnome_extension_list.txt
# User crontab
crontab -l > package_backup/user_crontab.txt