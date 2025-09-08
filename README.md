# Sysprep Fedora Desktop

Ansible playbook for preparing Fedora desktop system with Hyprland + [ML4W](https://www.ml4w.com/).

## Pre-install

Remote host:

1. [Install Fedora](https://fedoraproject.org/workstation/download).
2. Create user and update `user` in ansible/group_vars/all.yml and `remote_user` in ansible/ansible.cfg.
3. Start sshd service `sudo systemctl start sshd`
4. Make sure automatic suspend is disabled.

Local host:

1. Install requirements `ansible-galaxy install -r requirements.yml`
2. Add remote host ip or hostname to inventory file.
3. Update sysprep.yaml playbook host field if needed.
4. Configure ssh access `ssh-copy-id user@hostname`.
5. For prod add ssh key to remote host `~/.ssh` directory.

## Install

```bash
cd ansible
ansible-playbook playbooks/sysprep.yml
```

Ansible playbook will:

- Add RPM and Flatpak repositories.
- Install/remove RPM packages.
- Install flatpak applications.
- Install python modules.
- Download and install binaries.
- Add sudo rules.
- Create symbolic links.
- Enable/disable services.
- Configure DNS (use dnsmasq instead of systemd-networkd).
- Create cron jobs. **To avoid issues some cron jobs are created commented out**.
- Sync git repositories.
- Deploy dotfiles.
- Install fonts.
- Configure SDDM.
- Install prometheus node exporter.

## Backup

`backup.sh` script gathers lists of:

- configured repositories
- installed applications and flatpaks
- AppImages in user home directory
- present python modules
- user crontab

These lists are saved to backup directory.

Dotfiles specified in `DOTFILES` variable are backed up to dotfiles directory. Changes are committed and pushed to this repository.

```bash
./backup.sh
```
