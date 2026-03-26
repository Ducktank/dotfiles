# Terminal Environment

A one-command setup for a fast, modern terminal on macOS.

```
┌──────────────────────────────────────────────────────────────┐
│  Ghostty + Zellij + Catppuccin Mocha                         │
│                                                              │
│  ┌─────────────────────────────┬──────────────────────┐      │
│  │                             │  $ git status        │      │
│  │  Main editor / shell        │                      │      │
│  │  (60% width)                ├──────────────────────┤      │
│  │                             │  $ npm run dev       │      │
│  │                             │  Server running...   │      │
│  └─────────────────────────────┴──────────────────────┘      │
│  Alt+N new pane  Alt+← → navigate  Alt+H/J/K/L resize       │
└──────────────────────────────────────────────────────────────┘
```

## The Problem

Setting up a good terminal on a new Mac takes an afternoon. You need a terminal emulator, a multiplexer, configs for both, a decent font, and a theme that doesn't burn your retinas at midnight. Most guides leave you with a dozen browser tabs open and half-configured tools.

## The Solution

Clone this repo. Run one script. Done.

| Component | What It Is |
|-----------|-----------|
| [Ghostty](https://ghostty.org) | GPU-accelerated native macOS terminal — fast, beautiful, free |
| [Zellij](https://zellij.dev) | Terminal multiplexer with always-visible keybinding hints — no memorization |
| [JetBrains Mono](https://www.jetbrains.com/lp/mono/) | Developer font with ligatures — easy on the eyes |
| [Catppuccin Mocha](https://catppuccin.com) | Warm dark theme — consistent across both tools |

Everything is **declarative**: packages in a `Brewfile`, configs symlinked via [GNU Stow](https://www.gnu.org/software/stow/). No mystery scripts, no hidden state.

---

## Get Started

> **Requirements:** macOS (Apple Silicon or Intel) and a terminal (use the built-in Terminal.app)

### 1. Clone

```bash
git clone https://github.com/Ducktank/dotfiles ~/dotfiles
cd ~/dotfiles
```

### 2. Bootstrap

```bash
./bootstrap.sh
```

The script will:
1. Install [Homebrew](https://brew.sh) if you don't have it
2. Install Ghostty, Zellij, Stow, and JetBrains Mono from the `Brewfile`
3. Symlink all configs into `~/.config/`
4. Verify everything installed correctly

> **Already have configs?** No problem — the script uses `--adopt`, which absorbs your existing files into this repo. Run `git diff` afterward to see what changed.

### 3. Launch

Open **Ghostty** from Spotlight (`Cmd+Space` → type "Ghostty") or `/Applications`.

Zellij starts with the dev layout automatically — a main pane on the left (60%) and two utility panes stacked on the right.

**That's it. You're done.**

---

## What's Inside

```
dotfiles/
├── Brewfile                          # Packages: Ghostty, Zellij, Stow, JetBrains Mono
├── bootstrap.sh                      # One-command setup script
├── ghostty/.config/ghostty/config    # Ghostty terminal settings
└── zellij/.config/zellij/
    ├── config.kdl                    # Zellij multiplexer settings
    └── layouts/dev.kdl               # Dev workspace layout
```

## Customizing

Edit configs in this repo, then re-link:

```bash
cd ~/dotfiles
stow -R ghostty zellij
```

**Change the font** — edit `ghostty/.config/ghostty/config`:
```
font-family = Fira Code
font-size = 15
```

**Change the theme** — update both files to stay consistent:
- `ghostty/.config/ghostty/config` → `theme = catppuccin-latte`
- `zellij/.config/zellij/config.kdl` → `theme "catppuccin-latte"`

## Updating

```bash
cd ~/dotfiles
git pull
brew bundle
stow -R ghostty zellij
```

## Uninstalling

```bash
cd ~/dotfiles
stow -D ghostty zellij
```

This removes the symlinks. Your configs disappear from `~/.config/` but stay safe in this repo.

---

## License

[MIT](LICENSE) — do whatever you want with it.
