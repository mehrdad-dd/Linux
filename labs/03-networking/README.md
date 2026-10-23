# 🧪 Lab 03 — Networking

**Difficulty:** 🟡 Intermediate · **Time:** ~30 min

## 🎯 Objectives

- Inspect IP addresses and routes
- Test connectivity
- Check open ports
- Connect over SSH

## 📝 Tasks

### Task 1 — Show your IP

Display all network interfaces and their IP addresses.

<details>
<summary>💡 Hint</summary>

`ip addr`

</details>

### Task 2 — Test connectivity

Ping `1.1.1.1` exactly 4 times.

<details>
<summary>💡 Hint</summary>

`ping -c 4 1.1.1.1`

</details>

### Task 3 — DNS lookup

Resolve `github.com` to an IP using `dig`.

<details>
<summary>💡 Hint</summary>

`dig +short github.com`

</details>

### Task 4 — Listening ports

List all TCP ports currently listening, with the process name.

<details>
<summary>💡 Hint</summary>

`sudo ss -tlnp`

</details>

### Task 5 — HTTP check

Fetch only the HTTP headers of `https://example.com`.

<details>
<summary>💡 Hint</summary>

`curl -I https://example.com`

</details>

### Task 6 — SSH key

Generate an Ed25519 SSH key pair (no passphrase, for lab purposes only).

<details>
<summary>💡 Hint</summary>

`ssh-keygen -t ed25519 -f ~/.ssh/lab_key -N ""`

</details>

## ✅ Verification

```bash
ls ~/.ssh/lab_key ~/.ssh/lab_key.pub
# Expected: both files exist
```

## 🧹 Cleanup

```bash
rm ~/.ssh/lab_key ~/.ssh/lab_key.pub
```
