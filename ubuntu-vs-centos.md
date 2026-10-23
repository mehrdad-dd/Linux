## 🔑 Key Differences: Ubuntu vs CentOS 

A complete comparison table for users migrating between the two distributions.

| # | Area | Ubuntu (Debian-based) | CentOS (RHEL-based) | Notes |
|---|------|------------------------|---------------------|-------|
| 1 | **Package manager** | `apt` / `apt-get` | `yum` / `dnf` | `dnf` is default on CentOS 8+; `yum` is an alias |
| 2 | **Package format** | `.deb` | `.rpm` | Different binary formats |
| 3 | **Install package** | `sudo apt install nginx` | `sudo yum install httpd` | Different package names |
| 4 | **Remove package** | `sudo apt remove nginx` | `sudo yum remove httpd` | — |
| 5 | **Purge package + configs** | `sudo apt purge nginx` | `sudo yum remove httpd` then `rm -rf /etc/httpd` | YUM has no native `purge` |
| 6 | **Update package index** | `sudo apt update` | `sudo yum check-update` | — |
| 7 | **Upgrade all packages** | `sudo apt upgrade` | `sudo yum update` | — |
| 8 | **Full distro upgrade** | `sudo do-release-upgrade` | `sudo dnf system-upgrade` (Stream) | Ubuntu uses `do-release-upgrade` |
| 9 | **Search packages** | `apt search keyword` | `yum search keyword` | — |
| 10 | **Package info** | `apt show nginx` | `yum info httpd` | — |
| 11 | **List installed** | `apt list --installed` | `yum list installed` | — |
| 12 | **Clean cache** | `sudo apt clean` | `sudo yum clean all` | — |
| 13 | **Rebuild cache** | `sudo apt update` | `sudo yum makecache` | — |
| 14 | **List repos** | `apt-cache policy` | `yum repolist` | — |
| 15 | **Add third-party repo** | `sudo add-apt-repository ppa:...` | `sudo yum-config-manager --add-repo URL` | — |
| 16 | **Extra repos needed** | `universe`, `multiverse` (already in Ubuntu) | `epel-release` | EPEL is essential on CentOS |
| 17 | **Install EPEL/extra** | `sudo apt install software-properties-common` | `sudo yum install epel-release` | — |
| 18 | **Install package group** | `sudo apt install build-essential` | `sudo yum groupinstall "Development Tools"` | — |
| 19 | **Transaction history** | `/var/log/apt/history.log` | `yum history` | CentOS has a built-in rollback |
| 20 | **Undo a transaction** | Not native | `sudo yum history undo ID` | CentOS advantage |
| 21 | **Verify packages** | `debsums` (optional) | `sudo rpm -Va` | — |
| 22 | **List installed pkg files** | `dpkg -l` | `rpm -qa` | — |
| 23 | **Which pkg owns a file** | `dpkg -S /path/file` | `rpm -qf /path/file` | — |
| 24 | **Files in a package** | `dpkg -L nginx` | `rpm -ql httpd` | — |
| 25 | **Firewall tool** | `ufw` | `firewalld` | Both wrap `nftables`/`iptables` |
| 26 | **Enable firewall** | `sudo ufw enable` | `sudo systemctl enable --now firewalld` | — |
| 27 | **Check firewall** | `sudo ufw status verbose` | `sudo firewall-cmd --list-all` | — |
| 28 | **Allow a port** | `sudo ufw allow 8080/tcp` | `sudo firewall-cmd --add-port=8080/tcp --permanent` | CentOS needs `--reload` |
| 29 | **Allow a service** | `sudo ufw allow http` | `sudo firewall-cmd --add-service=http --permanent` | — |
| 30 | **Reload firewall** | `sudo ufw reload` | `sudo firewall-cmd --reload` | — |
| 31 | **Default web server** | `nginx` (or `apache2`) | `httpd` (Apache) | Package name differs |
| 32 | **Web server user** | `www-data` | `apache` | Path: `/var/www/html` vs `/var/www/html` |
| 33 | **Web server config** | `/etc/nginx/` or `/etc/apache2/` | `/etc/httpd/` | — |
| 34 | **Web server service** | `systemctl restart nginx` | `systemctl restart httpd` | — |
| 35 | **Default SSH service** | `ssh` | `sshd` | `systemctl restart ssh` vs `sshd` |
| 36 | **System log file** | `/var/log/syslog` | `/var/log/messages` | — |
| 37 | **Auth log** | `/var/log/auth.log` | `/var/log/secure` | — |
| 38 | **Package manager log** | `/var/log/apt/history.log` | `/var/log/yum.log` | — |
| 39 | **Service manager** | `systemd` (since 15.04) | `systemd` (since 7) | Older CentOS 6 used SysVinit |
| 40 | **Legacy service cmd** | `service nginx start` (still works) | `service httpd start` (works), `chkconfig httpd on` (CentOS 6) | — |
| 41 | **Version check** | `lsb_release -a` | `cat /etc/redhat-release` | — |
| 42 | **OS release file** | `/etc/os-release` | `/etc/os-release` + `/etc/centos-release` | — |
| 43 | **Kernel info** | `uname -a` | `uname -a` | Same |
| 44 | **User management** | `adduser` (interactive wrapper) | `useradd` (native) | Ubuntu's `adduser` is friendlier |
| 45 | **Create user** | `sudo adduser bob` | `sudo useradd bob && sudo passwd bob` | — |
| 46 | **Add to sudo group** | `sudo usermod -aG sudo bob` | `sudo usermod -aG wheel bob` | Group name differs |
| 47 | **Sudo config file** | `/etc/sudoers.d/` | `/etc/sudoers.d/` + `wheel` group | — |
| 48 | **Default shell** | `bash` | `bash` | Same |
| 49 | **Init system path** | `/etc/systemd/system/` | `/etc/systemd/system/` | Same |
| 50 | **Cron location** | `/etc/cron.d/`, `/etc/crontab` | `/etc/cron.d/`, `/etc/crontab` | Same |
| 51 | **Network config (legacy)** | `/etc/network/interfaces` (older) | `/etc/sysconfig/network-scripts/ifcfg-eth0` | Ubuntu now uses Netplan |
| 52 | **Network config (modern)** | Netplan: `/etc/netplan/*.yaml` | NetworkManager: `nmcli` | — |
| 53 | **Restart networking** | `sudo netplan apply` | `sudo nmcli connection reload` | — |
| 54 | **DNS resolver** | `systemd-resolved` | `NetworkManager` / `resolv.conf` | — |
| 55 | **Hostname change** | `sudo hostnamectl set-hostname name` | `sudo hostnamectl set-hostname name` | Same |
| 56 | **SELinux vs AppArmor** | `AppArmor` (default) | `SELinux` (default, enforcing) | Major security model difference |
| 57 | **Check MAC status** | `sudo aa-status` | `getenforce` / `sestatus` | — |
| 58 | **Disable MAC** | `sudo systemctl disable apparmor` | `sudo setenforce 0` (temporary) | Persistent: edit `/etc/selinux/config` |
| 59 | **Firewall backend** | `nftables` / `iptables` | `nftables` / `iptables` | Both abstract via frontends |
| 60 | **Time sync** | `timedatectl` + `chrony` | `timedatectl` + `chrony` | Same |
| 61 | **Timezone set** | `sudo timedatectl set-timezone UTC` | `sudo timedatectl set-timezone UTC` | Same |
| 62 | **Install dev tools** | `sudo apt install build-essential` | `sudo yum groupinstall "Development Tools"` | — |
| 63 | **Install Python 3** | `sudo apt install python3 python3-pip` | `sudo yum install python3 python3-pip` | — |
| 64 | **Install Docker** | `sudo apt install docker.io` | `sudo yum install docker` + `systemctl enable --now docker` | — |
| 65 | **Install Docker Compose** | `sudo apt install docker-compose` | `sudo yum install docker-compose` (EPEL) | — |
| 66 | **Install Node.js** | `sudo apt install nodejs npm` | `sudo yum install nodejs npm` | — |
| 67 | **Install Java** | `sudo apt install default-jdk` | `sudo yum install java-17-openjdk-devel` | — |
| 68 | **Install htop** | `sudo apt install htop` | `sudo yum install htop` (EPEL) | — |
| 69 | **Install ncdu** | `sudo apt install ncdu` | `sudo yum install ncdu` (EPEL) | — |
| 70 | **Install net-tools** | `sudo apt install net-tools` | `sudo yum install net-tools` | — |
| 71 | **Install curl/wget** | `sudo apt install curl wget` | `sudo yum install curl wget` | — |
| 72 | **Install vim** | `sudo apt install vim` | `sudo yum install vim-enhanced` | Package name differs |
| 73 | **Install nano** | `sudo apt install nano` | `sudo yum install nano` | — |
| 74 | **Install tmux** | `sudo apt install tmux` | `sudo yum install tmux` | — |
| 75 | **Install git** | `sudo apt install git` | `sudo yum install git` | — |
| 76 | **Nginx repo** | `sudo apt install nginx` | `sudo yum install nginx` (EPEL) | — |
| 77 | **MySQL/MariaDB** | `sudo apt install mariadb-server` | `sudo yum install mariadb-server` | — |
| 78 | **PostgreSQL** | `sudo apt install postgresql` | `sudo yum install postgresql-server` | — |
| 79 | **Redis** | `sudo apt install redis-server` | `sudo yum install redis` (EPEL) | — |
| 80 | **Docker repo add** | `curl -fsSL https://get.docker.com \| sh` | `sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo` | — |
| 81 | **Reboot** | `sudo reboot` | `sudo reboot` | Same |
| 82 | **Shutdown** | `sudo shutdown -h now` | `sudo shutdown -h now` | Same |
| 83 | **Check uptime** | `uptime` | `uptime` | Same |
| 84 | **Load average** | `cat /proc/loadavg` | `cat /proc/loadavg` | Same |
| 85 | **Memory info** | `free -h` | `free -h` | Same |
| 86 | **CPU info** | `lscpu` | `lscpu` | Same |
| 87 | **Disk info** | `lsblk`, `df -h` | `lsblk`, `df -h` | Same |
| 88 | **LVM tools** | `lvs`, `vgs`, `pvs` | `lvs`, `vgs`, `pvs` | Same |
| 89 | **Mount config** | `/etc/fstab` | `/etc/fstab` | Same |
| 90 | **Partition tool** | `parted`, `fdisk` | `parted`, `fdisk` | Same |
| 91 | **Filesystem check** | `fsck` | `fsck` | Same |
| 92 | **Archive** | `tar`, `zip`, `gzip` | `tar`, `zip`, `gzip` | Same |
| 93 | **Compression** | `xz`, `bzip2`, `zstd` | `xz`, `bzip2`, `zstd` | Same |
| 94 | **SSH server config** | `/etc/ssh/sshd_config` | `/etc/ssh/sshd_config` | Same |
| 95 | **SSH reload** | `sudo systemctl reload ssh` | `sudo systemctl reload sshd` | Service name differs |
| 96 | **Fail2ban** | `sudo apt install fail2ban` | `sudo yum install fail2ban` (EPEL) | — |
| 97 | **NTP service** | `chrony` (default since 18.04) | `chrony` (default since 8) | Same on modern versions |
| 98 | **Kernel modules** | `lsmod`, `modprobe` | `lsmod`, `modprobe` | Same |
| 99 | **Boot loader** | GRUB2 | GRUB2 | Same |
| 100 | **Initramfs update** | `sudo update-initramfs -u` | `sudo dracut -f` | Tool name differs |

### 🎯 Quick Cheat: The 10 Differences You Hit Every Day

| Task | Ubuntu | CentOS |
|------|--------|--------|
| Install a package | `sudo apt install nginx` | `sudo yum install nginx` |
| Update system | `sudo apt update && sudo apt upgrade` | `sudo yum update` |
| Firewall | `sudo ufw allow 80` | `sudo firewall-cmd --add-service=http --permanent` |
| Web server service | `systemctl restart nginx` | `systemctl restart httpd` |
| Web user | `www-data` | `apache` |
| Log file | `/var/log/syslog` | `/var/log/messages` |
| Auth log | `/var/log/auth.log` | `/var/log/secure` |
| Sudo group | `sudo` | `wheel` |
| Security module | AppArmor | SELinux |
| Extra repo | `universe` (built-in) | `epel-release` |
