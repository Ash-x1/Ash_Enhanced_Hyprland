# 🚀 Terminal Tools (Summary)

## 📂 zoxide
- **Description:** Smart replacement for `cd` that tracks your directory usage for fast navigation.  
- **Commands:**
  ```bash
  z <dir>    # jump to the directory containing the name
  zi <dir>   # interactive search via fzf

Setup:
	eval "$(zoxide init zsh --cmd z)"

---

📂 yazi

Description: Fast and modern terminal file manager (replacement for ranger).

Customizations:

1- Default editor set to micro.

2- Always show hidden files.

Run:
	yazi 

Suggested Alias:
	alias y="yazi"

---

📂 eza

Description: Modern and colorful replacement for ls.

- Commands:

	eza         # like ls
	eza -la     # show all files (including hidden)
	eza --tree  # tree view

- Aliases:

	alias ls="eza --icons --group-directories-first"
	alias ll="eza -lh --icons --group-directories-first"
	alias la="eza -lha --icons --group-directories-first"
	alias lt="eza --tree --icons"

---

🔍 fzf

Description: General-purpose fuzzy finder and interactive selector.

- Examples:
	ls | fzf                # pick a file from the list
	fd | fzf | xargs bat    # search for a file then preview with bat
	git branch | fzf        # pick a git branch
	history | fzf           # search through shell history

---

📊 glances

Description: Comprehensive system monitor (CPU, RAM, Disk, Network).

- Run:
	glances

---

🌱 lazygit

Description: Interactive git interface inside the terminal.

- Run:
	lazygit


---

🖥️ tmux

Description: Multiplexer to split the terminal into multiple sessions and panes.

- Basic Commands:
	tmux           # start a new session
	tmux attach    # attach to an existing session
	tmux ls        # list sessions

- Inside tmux (with Ctrl+b):

	% → vertical split.

	" → horizontal split.

	c → new window.

	n/p → move between windows.

--- 

💾 dust

Description: Modern, colorful replacement for du to show disk usage.

- Run:
	dust
	dust ~/Projects

---

💽 duf

Description: Modern, colorful replacement for df to show storage and partitions.

- Run:
	duf

--- 

🐱 bat

Description: Modern replacement for cat with syntax highlighting, line numbers, and git diff.

- Run:
	bat file.txt
	bat --diff main.py

---

🔍 fd

Description: Simple and fast replacement for find.

- Run:
	fd main                # search for files containing "main"
	fd . ~/Projects -e js  # search for js files
	fd -H secret           # include hidden files


