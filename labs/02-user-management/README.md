# 🧪 Lab 02 — User Management

**Difficulty:** 🟡 Intermediate · **Time:** ~30 min

> ⚠️ This lab requires `sudo`. Run it only in a VM or container.

## 🎯 Objectives

- Create users and groups
- Assign sudo privileges
- Set file permissions correctly

## 📝 Tasks

### Task 1 — Create a user

Create a user named `devops` with a home directory and bash shell.

<details>
<summary>💡 Hint</summary>

`sudo useradd -m -s /bin/bash devops`
Or on Ubuntu: `sudo adduser devops`

</details>

### Task 2 — Set a password

Set a password for `devops`.

<details>
<summary>💡 Hint</summary>

`sudo passwd devops`

</details>

### Task 3 — Grant sudo

Add `devops` to the sudo group (Ubuntu: `sudo`; CentOS: `wheel`).

<details>
<summary>💡 Hint</summary>

`sudo usermod -aG sudo devops`

</details>

### Task 4 — Create a group

Create a group `projectx` and add `devops` to it.

### Task 5 — Shared directory

Create `/srv/projectx` owned by `root:projectx` with permission `2770` (setgid, so new files inherit the group).

<details>
<summary>💡 Hint</summary>

```bash
sudo mkdir -p /srv/projectx
sudo chown root:projectx /srv/projectx
sudo chmod 2770 /srv/projectx
```

</details>

## ✅ Verification

```bash
id devops
# Expected: groups include sudo and projectx

ls -ld /srv/projectx
# Expected: drwxrws--- root projectx
```

## 🧹 Cleanup

```bash
sudo userdel -r devops
sudo groupdel projectx
sudo rm -rf /srv/projectx
```
