# 🐧 Ubuntu Linux Command Cheat Sheet

> 100 essential commands for everyday Linux administration on Ubuntu 22.04 / 24.04 LTS.

![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04%20%7C%2024.04-E95420?style=flat-square&logo=ubuntu&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)

A concise, copy-paste friendly reference of the 100 most important Linux commands for Ubuntu users, sysadmins, and DevOps engineers.

---

## 📑 Table of Contents

- [📁 File & Directory Operations](#-file--directory-operations)
- [📄 File Viewing & Text Processing](#-file-viewing--text-processing)
- [🔐 Permissions & Users](#-permissions--users)
- [📦 Package Management (APT)](#-package-management-apt)
- [⚙️ Process Management](#️-process-management)
- [💾 Disk & System Information](#-disk--system-information)
- [🌐 Networking](#-networking)
- [🔄 Service Management (systemd)](#-service-management-systemd)
- [🔥 Firewall (UFW)](#-firewall-ufw)
- [🧰 Utilities & Shortcuts](#-utilities--shortcuts)
- [🛡️ Security & Audit](#️-security--audit)
- [📝 Scripting Essentials](#-scripting-essentials)

---

## 📁 File & Directory Operations

| Command | Description |
|---------|-------------|
| `pwd` | Print current working directory |
| `ls -la` | List all files (including hidden) with details |
| `ls -lh` | List with human-readable file sizes |
| `cd /path` | Change directory |
| `cd ..` | Move up one directory level |
| `cd ~` | Go to home directory |
| `cd -` | Switch to previous directory |
| `mkdir -p a/b/c` | Create nested directories |
| `rmdir dir` | Remove empty directory |
| `touch file.txt` | Create empty file or update timestamp |
| `cp -a src/ dest/` | Copy recursively preserving attributes |
| `mv old new` | Move or rename file/directory |
| `rm file.txt` | Delete file |
| `rm -rf dir/` | Force delete directory and contents |
| `ln -s target link` | Create symbolic link |
| `tree -L 2` | Display directory tree (2 levels deep) |
| `find . -name "*.log"` | Find files by name pattern |
| `find . -mtime -7` | Find files modified within 7 days |
| `locate filename` | Fast file search via database |
| `file document.pdf` | Determine file type |

---

## 📄 File Viewing & Text Processing

| Command | Description |
|---------|-------------|
| `cat file.txt` | Display entire file content |
| `less file.txt` | Page through file interactively |
| `head -n 20 file.txt` | Show first 20 lines |
| `tail -n 20 file.txt` | Show last 20 lines |
| `tail -f app.log` | Follow log file in real-time |
| `wc -l file.txt` | Count lines in file |
| `grep "pattern" file` | Search text in file |
| `grep -rn "TODO" src/` | Recursive search with line numbers |
| `grep -i "error" log.txt` | Case-insensitive search |
| `sed -i 's/old/new/g' file` | Replace text in-place |
| `awk '{print $1}' file` | Extract first column |
| `cut -d',' -f1 data.csv` | Cut fields by delimiter |
| `sort file.txt \| uniq -c` | Sort and count unique lines |
| `diff file1 file2` | Compare two files |
| `tee output.log` | Display and save output simultaneously |

---

## 🔐 Permissions & Users

| Command | Description |
|---------|-------------|
| `sudo command` | Execute with root privileges |
| `sudo -i` | Open root shell |
| `whoami` | Show current username |
| `id` | Display user and group IDs |
| `chmod 644 file` | Set permissions: rw-r--r-- |
| `chmod 755 script.sh` | Set permissions: rwxr-xr-x |
| `chmod u+x script.sh` | Add execute permission for owner |
| `chown user:group file` | Change file owner and group |
| `chown -R www-data:www-data /var/www` | Recursive ownership change |
| `passwd` | Change current user password |
| `groups` | List groups for current user |
| `umask` | Show default permission mask |

---

## 📦 Package Management (APT)

| Command | Description |
|---------|-------------|
| `sudo apt update` | Refresh package index |
| `sudo apt upgrade` | Upgrade installed packages |
| `sudo apt install package` | Install a package |
| `sudo apt remove package` | Remove package (keep configs) |
| `sudo apt purge package` | Remove package and configs |
| `sudo apt autoremove` | Remove unused dependencies |
| `apt search keyword` | Search for packages |
| `apt show package` | Display package information |
| `apt list --installed` | List installed packages |
| `sudo apt --fix-broken install` | Fix broken dependencies |
| `sudo snap install package` | Install via Snap |
| `snap list` | List installed snaps |

---

## ⚙️ Process Management

| Command | Description |
|---------|-------------|
| `ps aux` | Snapshot of all running processes |
| `ps aux --sort=-%mem \| head` | Top memory-consuming processes |
| `top` | Real-time process monitor |
| `htop` | Interactive process viewer (install separately) |
| `kill PID` | Terminate process by PID |
| `kill -9 PID` | Force kill process |
| `pkill process_name` | Kill process by name |
| `jobs -l` | List background jobs |
| `bg %1` | Resume job in background |
| `fg %1` | Bring job to foreground |
| `command &` | Run command in background |
| `lsof -i :8080` | Find process using port 8080 |
| `kill -9 $(lsof -t -i:8080)` | Kill process on specific port |

---

## 💾 Disk & System Information

| Command | Description |
|---------|-------------|
| `df -h` | Show disk space usage (human-readable) |
| `du -sh /var/*` | Show directory sizes |
| `du -sh * \| sort -h` | Sort directories by size |
| `free -h` | Display memory usage |
| `lsblk` | List block devices |
| `uname -a` | Show system information |
| `lsb_release -a` | Show Ubuntu version details |
| `uptime` | System uptime and load average |
| `vmstat 3 5` | Virtual memory stats (5 samples, 3s apart) |
| `ncdu` | Interactive disk usage analyzer |
| `sudo mount /dev/sdb1 /mnt` | Mount a device |

---

## 🌐 Networking

| Command | Description |
|---------|-------------|
| `ip addr` | Show IP addresses (modern ifconfig) |
| `ip link set eth0 up` | Enable network interface |
| `ping -c 4 google.com` | Test connectivity (4 packets) |
| `curl -I https://example.com` | Fetch HTTP headers |
| `curl -O URL` | Download file |
| `wget URL` | Download file via wget |
| `dig +short domain.com` | DNS lookup (short output) |
| `traceroute domain.com` | Trace network path |
| `ss -tlnp` | Show listening TCP ports with processes |
| `nc -zv host 443` | Check port connectivity |
| `tcpdump -i eth0 port 443 -c 100` | Capture 100 packets on port 443 |
| `ssh user@host` | Connect to remote server |
| `scp file user@host:/path` | Secure copy to remote |
| `ssh-keygen -t ed25519` | Generate SSH key pair |

---

## 🔄 Service Management (systemd)

| Command | Description |
|---------|-------------|
| `systemctl status nginx` | Check service status |
| `systemctl start nginx` | Start service |
| `systemctl stop nginx` | Stop service |
| `systemctl restart nginx` | Restart service |
| `systemctl enable nginx` | Enable service at boot |
| `systemctl disable nginx` | Disable service at boot |
| `journalctl -u nginx -f` | Follow service logs |
| `journalctl --since "10 min ago"` | View recent logs |
| `crontab -e` | Edit cron jobs |
| `crontab -l` | List scheduled cron jobs |

---

## 🔥 Firewall (UFW)

| Command | Description |
|---------|-------------|
| `sudo ufw status` | Check firewall status |
| `sudo ufw enable` | Enable firewall |
| `sudo ufw allow 22` | Allow SSH port |
| `sudo ufw allow 80,443/tcp` | Allow HTTP/HTTPS |
| `sudo ufw deny 3306` | Deny MySQL port |
| `sudo ufw delete allow 80` | Remove allow rule |

---

## 🧰 Utilities & Shortcuts

| Command | Description |
|---------|-------------|
| `man command` | Open manual page |
| `command --help` | Quick usage summary |
| `which command` | Locate executable path |
| `history` | Show command history |
| `!!` | Repeat last command |
| `sudo !!` | Repeat last command with sudo |
| `!$` | Reuse last argument of previous command |
| `^old^new` | Replace typo in previous command |
| `clear` | Clear terminal screen |
| `exit` | Close terminal session |
| `xargs` | Build command from stdin (e.g., `ls *.log \| xargs rm`) |
| `watch -n 2 command` | Run command every 2 seconds |
| `alias ll='ls -la'` | Create command alias |
| `env` | Display environment variables |
| `export VAR="value"` | Set environment variable |

---

## 🛡️ Security & Audit

| Command | Description |
|---------|-------------|
| `sudo ufw status verbose` | Detailed firewall rules |
| `last` | Show recent login history |
| `who` | Show currently logged-in users |
| `w` | Detailed logged-in users and activity |
| `sudo fail2ban-client status` | Check fail2ban jail status |
| `sudo arp-scan -l` | Scan local network hosts |
| `sudo nmap -sT localhost` | Scan local open ports |

---

## 📝 Scripting Essentials

| Pattern | Description |
|---------|-------------|
| `#!/bin/bash` | Shebang line |
| `set -euo pipefail` | Strict mode: exit on error, undefined vars, pipe failures |
| `$?` | Exit code of last command |
| `$1, $2` | Script arguments |
| `"${VAR:-default}"` | Default value if variable unset |
| `command1 && command2` | Run second only if first succeeds |
| `command1 \| command2` | Pipe output |
| `for f in *.txt; do ...; done` | Loop over files |
| `while read -r line; do ...; done < file` | Read file line by line |

---

## ⚠️ Safety Notes

- `rm -rf` is irreversible — double-check paths before running.
- Always prefer `sudo apt` over running as root shell.
- Use `ssh-keygen` + `ssh-copy-id` instead of password logins.
- Test firewall rules with `sudo ufw status` before enabling.

---

## 🤝 Contributing

PRs are welcome! If you find a command that should be here, open an issue or submit a pull request.

## 📄 License

MIT © MDD
