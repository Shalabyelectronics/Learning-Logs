### 🛡️ SuperUser: Quest Log - Level 1
**Date:** 2026-04-27

#### 1. Command: `mkdir`
- **Objective:** Create a new directory.
- **The Spell:** `mkdir <directory_name>`
- **Backend Scenario:** Organizing project structure (e.g., creating a `src` folder).

#### 2. Command: `touch`
- **Objective:** Create a new empty file.
- **The Spell:** `touch <file_name>`
- **Backend Scenario:** Creating configuration files like `.env` or entry points like `app.js`.

#### 3. Command: `rm`
- **Objective:** Remove files or directories.
- **The Spell:** `rm <file_name>` (use `rm -r` for directories).
- **Backend Scenario:** Cleaning up temporary files or outdated logs to save server space.
### 🛡️ SuperUser: Quest Log - Level 2
**Date:** 2026-04-27

#### 1. Command: `ls -la`
- **Objective:** List all files in long format, including hidden ones.
- **The Spell:** `ls -la`
- **Backend Scenario:** Checking for hidden config files like `.env` or `.gitignore`.

#### 2. Command: `tree`
- **Objective:** Display directory structure in a visual tree format.
- **The Spell:** `tree`
- **Backend Scenario:** Visualizing complex backend architectures (Models/Views/Controllers).

#### 3. Command: `grep`
- **Objective:** Search for text patterns inside files.
- **The Spell:** `grep "pattern" filename`
- **Backend Scenario:** Scanning server logs for specific keywords like "404" or "error".
---
### 🏗️ Level 3.5: The Ubuntu Expansion (Proot-Distro)
**Date:** 2026-04-29
- **Action:** Installed a full Ubuntu environment inside Termux.
- **Achievement:** Created multiple users (`moom`, `shalaby`) and managed `sudo` privileges.
- **Lesson Learned:** In `proot` environments on Android, `chown` is simulated and may reset to the session user due to Kernel restrictions.

### 🎯 Level 4: Process & Ownership Mastery
**Date:** 2026-04-30
- **Commands:** `ps aux`, `top`, `kill`, `chown`, `sudo`.
- **Ownership Test:** Attempted to transfer ownership between `moom` and `shalaby`.
- **System Insight:** Learned that `sudo` is required for ownership transfer, even if the command is restricted by the host OS (Android).
- Level 5: Explored networking with curl.
- Task: Created 'downloads' directory and fetched remote files.
- Insight: Mastered -o vs -O and non-blocking concepts.

---
### 🏗️ Level 5: The Web Explorer 🌐
**Date:** 2026-05-01
- **Action:** Explored networking and data fetching from the CLI.
- **Achievement:** Used `curl` to fetch Zen quotes and download repository files.
- **Lesson Learned:** Understood the difference between `-o` (custom name) and `-O` (original name) and the concept of "Non-blocking" I/O.

### ⛓️ Level 6: The Pipe Master
**Date:** 2026-05-01
- **Action:** Connected multiple Linux tools into powerful command chains.
- **Achievement:** Used Pipes (`|`) to filter processes, sort files by size, and count specific file extensions.
- **Lesson Learned:** Mastered `grep` for searching, `head` for clipping outputs, and `wc -l` for counting results.
### 🛡️ Level 7: The Gatekeeper & Batch Renamer
**Date:** 2026-05-03
- **Action:** Created a training sandbox and performed batch operations.
- **Achievement:** Used a `for` loop to rename multiple files instantly and mastered `chmod` for file protection.
- **Lesson Learned:** Even write-protected files can be deleted by the owner after a confirmation prompt.

- [2026-05-04] WSL Environment Setup Completed.
### 🔪 Level 9: The Text Surgeon
**Date:** 2026-05-05
- **Action:** Mastered text stream manipulation in Termux.
- **Achievement:** Used 'less' for smart reading, 'sed' for instant string replacement, and 'grep' with Regex to extract dates.
- **Lesson Learned:** Powerful CLI tools make mobile terminal usage as efficient as desktop.
### 🏰 Level 10: The Architect's Trial
**Date:** 2026-05-06
- **Action:** Cleared the Terminal Dungeon challenge on WSL Ubuntu.
- **Achievement:** Successfully integrated grep, sed, chmod, and loops to solve a complex environment puzzle.
- **New Skill:** Learned how to locate files using the `find` command.
- **Status:** Terminal Master Level reached.
