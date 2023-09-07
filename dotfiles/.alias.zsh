alias cp='cp -i'
alias df='df -h'
alias free='free -m'
alias ll='lsd -alF'
alias la='lsd -A'
alias ls='lsd'
alias suu='sudo su -'
alias ap='ansible-playbook'
alias ad='ansible-doc'
alias sshpi='ssh -i /home/mj/.ssh/id_rsa ubuntu@pi.home.lab'
alias sshpve='ssh -i /home/mj/.ssh/id_rsa root@pve.home.lab'
alias sshdocker='ssh -i /home/mj/.ssh/id_rsa debian@docker.pve.home.lab'
alias sshtruenas='ssh -i /home/mj/.ssh/id_rsa root@truenas.pve.home.lab'
alias sshsrv='ssh -i /home/mj/.ssh/id_rsa root@srv.home.lab'
alias dff='df -h -T -x devtmpfs -x tmpfs -x squashfs -x overlay -x fuse.revokefs-fuse'
alias sshmount='sudo sshfs -o allow_other,default_permissions,idmap=user,uid=1000,gid=1000'
alias lsblkk='lsblk -e7 -o name,fstype,fssize,fsuse%,mountpoint'
alias grepall='sudo grep -rnwls / -e'
alias psgrep='ps -ef | grep'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias exifrm='exiftool -all= -overwrite_original -ext jpg'
alias picoshell='sudo rshell --buffer-size=512 -p /dev/ttyACM1'
alias mountnas='sudo mount -v -t nfs 192.168.1.9:/mnt/tank /mnt/truenas'
alias k='kubectl'
alias gstatus='git status'
alias gcommit='git commit -am'
alias gpull='git pull'
alias gpush='git push -u origin'
alias tailf='tail -f'
alias v='vim'
alias cat='bat -p'
alias sudo='sudo -S'
