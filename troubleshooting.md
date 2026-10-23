# 🔧 Troubleshooting Guide

> Fixes for the most common Linux errors. Search this file with `Ctrl+F`.

---

## Permission denied (running a script)

**Symptom:** `bash: ./script.sh: Permission denied`

**Cause:** The file is not executable.

**Fix:**
```bash
chmod +x script.sh
./script.sh
```

---

## Service fails to start

**Symptom:** `systemctl start nginx` returns an error.

**Diagnose:**
```bash
systemctl status nginx
journalctl -u nginx -xe --no-pager | tail -50
```

Look for the first `error` or `failed` line in the log.

---

## Port already in use

**Symptom:** `bind: Address already in use`

**Diagnose:**
```bash
sudo lsof -i :8080
# or
sudo ss -tlnp | grep :8080
```

**Fix:**
```bash
kill -9 <PID>
```

---

## Disk is full

**Symptom:** `No space left on device`

**Diagnose:**
```bash
df -h
du -sh /* 2>/dev/null | sort -h
```

**Common culprits:** `/var/log`, Docker images, old kernels.

**Quick cleanup:**
```bash
sudo journalctl --vacuum-time=7d
sudo apt autoremove --purge   # Ubuntu
sudo yum autoremove           # CentOS
```

---

## SSH connection refused

**Symptom:** `ssh: connect to host X port 22: Connection refused`

**Checklist:**
1. Is SSH running? `systemctl status ssh` (Ubuntu) / `sshd` (CentOS)
2. Is the port open? `sudo ss -tlnp | grep :22`
3. Is the firewall blocking it? `sudo ufw status` / `sudo firewall-cmd --list-all`
4. Is the server reachable? `ping <host>`

---

## Command not found

**Symptom:** `foo: command not found`

**Fix:**
- Install it: `sudo apt install foo` / `sudo yum install foo`
- Or check the path: `echo $PATH`
- Or locate it: `which foo`, `find / -name foo 2>/dev/null`

---

## Permission denied on directory

**Symptom:** `cd: permission denied: /some/dir`

**Diagnose:**
```bash
ls -ld /some/dir
```

Check the **execute** bit (`x`) for your user or group. Fix with:
```bash
sudo chmod +x /some/dir
sudo chown you:you /some/dir
```

---

## Time is wrong

**Diagnose:**
```bash
timedatectl
```

**Fix:**
```bash
sudo timedatectl set-timezone UTC
sudo timedatectl set-ntp true
```

---

## Cron job not running

**Checklist:**
1. Is cron running? `systemctl status cron` (Ubuntu) / `crond` (CentOS)
2. Is the script executable? `chmod +x script.sh`
3. Does the script use absolute paths? Cron has a minimal `$PATH`.
4. Check logs: `grep CRON /var/log/syslog` (Ubuntu) / `/var/log/cron` (CentOS)
5. Add `>> /tmp/cron.log 2>&1` to the job to capture output.

---

## "Too many open files"

**Symptom:** `Too many open files`

**Diagnose:**
```bash
ulimit -n
cat /proc/sys/fs/file-max
```

**Fix (temporary):**
```bash
ulimit -n 65535
```

**Fix (permanent):** edit `/etc/security/limits.conf`:
```
*  soft  nofile  65535
*  hard  nofile  65535
```
