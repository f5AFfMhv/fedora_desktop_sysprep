alias cp='cp -i'
alias df='df -h'
alias dff='df -h -T -x devtmpfs -x tmpfs -x squashfs -x overlay -x fuse.revokefs-fuse'
alias free='free -m'
alias ll='lsd -alF'
alias la='lsd -A'
alias ls='lsd'
alias suu='sudo su -'
alias sudo='sudo -S'
alias a='ansible'
alias ap='ansible-playbook'
alias ad='ansible-doc'
alias ag='ansible-galaxy'
alias sshpve='ssh -i /home/mj/.ssh/id_rsa root@pve.home.lab'
alias sshdocker='ssh -i /home/mj/.ssh/id_rsa mj@docker.home.lab'
alias sshsrv='ssh -i /home/mj/.ssh/id_rsa root@srv.home.lab'
alias sshmount='sudo sshfs -o allow_other,default_permissions,idmap=user,uid=1000,gid=1000'
alias lsblkk='lsblk -e7 -o name,fstype,fssize,fsuse%,mountpoint'
alias grepall='sudo grep -rnwls / -e'
alias psgrep='ps -ef | grep'
alias dc='docker compose'
alias dcu='docker compose up -d'
alias dcd='docker compose down'
alias exifrm='exiftool -all= -overwrite_original -ext jpg'
alias picoshell='sudo rshell --buffer-size=512 -p /dev/ttyACM1'
alias mountnas='sudo mount -v -t nfs docker.home.lab:/mnt/data /mnt/data'
alias k='kubectl'
alias kcc='kubectl config current-context'
alias kcl='kubectl config get-contexts'
alias kcu='kubectl config use-context'
alias kcn='kubectl config set-context --current --namespace'
alias ka='kubectl apply -f'
alias kp='kubectl get pod -o wide'
alias kd='kubectl delete --force'
alias gstatus='git status'
alias gcommit='git commit -am'
alias gpull='git pull'
alias gpush='git push -u origin'
alias tailf='tail -f'
alias v='vim'
alias cat='bat -p'
