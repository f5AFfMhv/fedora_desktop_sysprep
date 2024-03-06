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
- Deploy dotfiles
- Install fonts
- Install Gnome extensions
- Install prometheus node exporter (prometheus.prometheus.node_exporter ansible role)

## Backup

`backup.sh` script gathers lists of:

- configured repositories
- installed applications and flatpaks
- present python modules
- gnome extensions
- fedora configuration
- user crontab

These lists are saved to backup directory.

Dot files specified in `DOTFILES` variable are backed up to dotfiles directory. Changes are commited and pushed to this repository.

```bash
./backup.sh
```

## Manual work

Restore Fedora/Gnome settings from file. This is manual step as it requires gnome session to be present.

```bash
dconf load -f / < backup/fedora_settings.conf
```
