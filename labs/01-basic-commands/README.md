# 🧪 Lab 01 — Basic Commands

**Difficulty:** 🟢 Beginner · **Time:** ~20 min

## 🎯 Objectives

By the end of this lab you will be able to:
- Navigate the filesystem
- Create, copy, move, and delete files
- Search for files and text

## 🛠️ Setup

Create a sandbox directory to work in:

```bash
mkdir -p ~/lab01 && cd ~/lab01
```

## 📝 Tasks

### Task 1 — Create structure

Create this structure:

```
lab01/
├── docs/
│   ├── report.txt
│   └── notes.txt
└── logs/
    └── app.log
```

<details>
<summary>💡 Hint</summary>

Use `mkdir -p`, `touch`, and `cd`.

</details>

### Task 2 — Add content

Write the line `error: disk full` inside `logs/app.log`, and `hello world` inside `docs/report.txt`.

<details>
<summary>💡 Hint</summary>

Use `echo "..." > file`.

</details>

### Task 3 — Search

Find every file under `lab01/` whose name ends with `.txt`.

<details>
<summary>💡 Hint</summary>

`find . -name "*.txt"`

</details>

### Task 4 — Text search

Find which file contains the word `error`.

<details>
<summary>💡 Hint</summary>

`grep -r "error" .`

</details>

### Task 5 — Copy & rename

Copy `docs/report.txt` to `docs/report.bak.txt`, then move `logs/app.log` to `logs/app.log.old`.

### Task 6 — Clean up

Delete the `docs/notes.txt` file and the entire `logs/` directory.

## ✅ Verification

Run these commands. Your output should match:

```bash
find . -type f
# Expected:
# ./docs/report.txt
# ./docs/report.bak.txt
# ./logs/app.log.old

grep -r "error" .
# Expected:
# ./logs/app.log.old:error: disk full
```

## 🧹 Cleanup

```bash
cd ~ && rm -rf ~/lab01
```

## 📖 Related Cheat Sheet

[File & Directory Operations](../../cheatsheets/ubuntu.md#-file--directory-operations)
