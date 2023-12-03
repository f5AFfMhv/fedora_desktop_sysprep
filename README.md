# Sysprep Fedora Desktop

Ansible playbook for preparing Fedora desktop system with Gnome DE.

```bash
cd ansible
# Update ansible.cfg with correct user
ansible-playbook playbooks/sysprep.yml
```

## Performed tasks:

- Add/remove RPM repositories
- Install/remove RPM packages
- Install flatpak applications
- Add python modules
- Add sudo rules
- Create symbolic links
- Enable/disable services
- Configure DNS (use dnsmasq instead of systemd-networkd)
- Create cron jobs
- Sync git repositories

## Backup

`backup.sh` script gathers lists of:

- configured repositories
- installed applications and flatpaks
- present python modules
- gnome extensions
- gnome extension configuration
- user crontab

These lists are saved to backup directory.

Dot files specified in `DOTFILES` variable are backed up to dotfiles directory. Changes are commited and pushed to this repository.

```bash
./backup.sh
```

## Manual work

Restore gnome extension configuration:

```bash
dconf load /org/gnome/shell/extensions/ < extensions_settings.txt
```
