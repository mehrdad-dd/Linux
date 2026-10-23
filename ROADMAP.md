# 🗺️ Linux Learning Roadmap

> An 8-week structured path from zero to confident Linux server administration.

Each week includes: **reading** (cheat sheet section), **practice** (lab), and **real-world** (script or troubleshooting).

---

## Week 1 — File System & Basic Commands

**Goal:** Navigate the filesystem and manipulate files confidently.

- 📋 Read: [File & Directory Operations](cheatsheets/ubuntu.md#-file--directory-operations)
- 🧪 Lab: [01-basic-commands](labs/01-basic-commands/)
- ✅ You can: `pwd`, `ls`, `cd`, `cp`, `mv`, `rm`, `find`, `ln`

---

## Week 2 — Text Processing & Viewing

**Goal:** Search, filter, and transform text from the command line.

- 📋 Read: [File Viewing & Text Processing](cheatsheets/ubuntu.md#-file-viewing--text-processing)
- 🧪 Lab: (coming soon)
- ✅ You can: `cat`, `less`, `grep`, `sed`, `awk`, `cut`, `sort`, `uniq`

---

## Week 3 — Users & Permissions

**Goal:** Manage users, groups, and file permissions securely.

- 📋 Read: [Permissions & Users](cheatsheets/ubuntu.md#-permissions--users)
- 🧪 Lab: [02-user-management](labs/02-user-management/)
- ✅ You can: `chmod`, `chown`, `useradd`, `usermod`, `passwd`, `umask`

---

## Week 4 — Processes & Resources

**Goal:** Monitor and control running processes and system resources.

- 📋 Read: [Process Management](cheatsheets/ubuntu.md#️-process-management)
- 🧪 Lab: (coming soon)
- ✅ You can: `ps`, `top`, `htop`, `kill`, `jobs`, `lsof`, `nice`

---

## Week 5 — Networking & SSH

**Goal:** Configure networking, connect remotely, and test connectivity.

- 📋 Read: [Networking](cheatsheets/ubuntu.md#-networking)
- 🧪 Lab: [03-networking](labs/03-networking/)
- ✅ You can: `ip`, `ping`, `curl`, `ss`, `ssh`, `scp`, `ssh-keygen`

---

## Week 6 — Services & systemd

**Goal:** Manage services, logs, and scheduled jobs.

- 📋 Read: [Service Management](cheatsheets/ubuntu.md#-service-management-systemd)
- 🧪 Lab: (coming soon)
- ✅ You can: `systemctl`, `journalctl`, `crontab`

---

## Week 7 — Security & Firewall

**Goal:** Secure a server with firewall rules and audit tools.

- 📋 Read: [Firewall](cheatsheets/ubuntu.md#-firewall-ufw) + [Security](cheatsheets/ubuntu.md#️-security--audit)
- 🧪 Lab: (coming soon)
- ✅ You can: `ufw`/`firewalld`, `last`, `who`, `fail2ban`

---

## Week 8 — Bash Scripting & Final Project

**Goal:** Automate tasks with Bash and deploy a secure web server.

- 📋 Read: [Scripting Essentials](cheatsheets/ubuntu.md#-scripting-essentials)
- 🧪 Lab: Final project — install Nginx, configure firewall, enable HTTPS, set up backups
- ✅ You can: write scripts with `set -euo pipefail`, loops, functions, and cron

---

## 🎯 After the Roadmap

- Practice on a real VPS (DigitalOcean, Hetzner, or a local VM).
- Learn Docker and Ansible next.
- Contribute a lab or script to this repo.
