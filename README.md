# Sysprep Fedora Desktop

Ansible playbook for preparing Fedora desktop system with Gnome DE.

## Pre-install

Remote host:

1. [Install Fedora](https://fedoraproject.org/workstation/download).
2. Create user and update `user` in ansible/group_vars/all.yml and `remote_user` in ansible/ansible.cfg.
3. Start sshd service `sudo systemctl start sshd`
4. Make sure automatic suspend is disabled.

Local host:

1. Install requirements `ansible-galaxy install -r requirements.yml`
2. Add remote host ip or hostname to inventory file.
3. Update sysprep.yaml playbook host if needed.
4. Configure ssh access `ssh-copy-id user@hostname`.
5. For prod add ssh key to remote host `~/.ssh` directory.

## Install

```bash
cd ansible
ansible-playbook playbooks/sysprep.yml
```

Ansible playbook will:

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
- Install prometheus node exporter

## Post-install

1. Restore Fedora/Gnome settings from file. This is a manual step as it requires gnome session to be present.

```bash
dconf load -f / < backup/fedora_settings.conf
```

2. [Install themes](https://www.gnome-look.org/browse/).
3. Enable firefox, google-drive, vscode, gphotos sync.
4. Configure Timeshift backups.

### Issue with extensions

Some extensions shows missing file error after installation. To resolve this remove extension using `Extensions Manager` and install it again manually.

## System Backup

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
