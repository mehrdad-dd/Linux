# 🐧 Ubuntu Linux Command Cheat Sheet

> 100 essential commands for everyday Linux administration on Ubuntu 22.04/24.04 LTS.

![Ubuntu](https://img.shields.io/badge/Ubuntu-22.04%20%7C%2024.04-E95420?style=flat-square&logo=ubuntu&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-blue?style=flat-square)
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)

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
Linux Command Cheat Sheet (Ubuntu)

A concise reference of 100 essential Linux commands for Ubuntu, formatted for GitHub publication.

Linux Command Cheat Sheet (Ubuntu)

A concise reference of 100 essential Linux commands for Ubuntu, formatted for GitHub publication.
📁 File & Directory Operations
Command	Description
pwd	Print current working directory
ls -la	List all files (including hidden) with details
ls -lh	List with human-readable file sizes
cd /path	Change directory
cd ..	Move up one directory level
cd ~	Go to home directory
cd -	Switch to previous directory
mkdir -p a/b/c	Create nested directories
rmdir dir	Remove empty directory
touch file.txt	Create empty file or update timestamp
cp -a src/ dest/	Copy recursively preserving attributes
mv old new	Move or rename file/directory
rm file.txt	Delete file
rm -rf dir/	Force delete directory and contents
ln -s target link	Create symbolic link
tree -L 2	Display directory tree (2 levels deep)
find . -name "*.log"	Find files by name pattern
find . -mtime -7	Find files modified within 7 days
locate filename	Fast file search via database
file document.pdf	Determine file type
