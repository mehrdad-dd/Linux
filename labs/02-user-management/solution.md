# ✅ Solution — Lab 02

```bash
# Task 1
sudo useradd -m -s /bin/bash devops

# Task 2
sudo passwd devops

# Task 3
sudo usermod -aG sudo devops   # Ubuntu
# sudo usermod -aG wheel devops  # CentOS

# Task 4
sudo groupadd projectx
sudo usermod -aG projectx devops

# Task 5
sudo mkdir -p /srv/projectx
sudo chown root:projectx /srv/projectx
sudo chmod 2770 /srv/projectx
```
