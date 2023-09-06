# Sysprep Fedora Desktop

Ansible playbook for preparing Fedora desktop system.

```bash
cd ansible
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
- Configure DNS
- Create cron jobs
- Sync git repositories

## Backup

`backup.sh` script gathers list of installed applications, python modules and gnome extensions. These lists are saved to backup directory.

```bash
./backup.sh
```
