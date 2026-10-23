# ✅ Solution — Lab 01

```bash
# Setup
mkdir -p ~/lab01 && cd ~/lab01

# Task 1
mkdir -p docs logs
touch docs/report.txt docs/notes.txt logs/app.log

# Task 2
echo "error: disk full" > logs/app.log
echo "hello world" > docs/report.txt

# Task 3
find . -name "*.txt"

# Task 4
grep -r "error" .

# Task 5
cp docs/report.txt docs/report.bak.txt
mv logs/app.log logs/app.log.old

# Task 6
rm docs/notes.txt
rm -rf logs/
```
