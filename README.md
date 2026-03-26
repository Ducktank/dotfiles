# Terminal Environment

A fast, modern terminal setup for macOS using **Ghostty** and **Zellij**.

## The Problem

Setting up a good terminal on a new Mac is tedious. You need a fast terminal emulator, a multiplexer for splits and tabs, configs for both, and they need to work well together. Most guides leave you with a dozen tabs open and half-configured tools.

## The Solution

This repo gives you a one-command setup:

- **Ghostty** — GPU-accelerated native macOS terminal (fast, beautiful, free)
- **Zellij** — Modern terminal multiplexer with always-visible keybinding hints (no memorization needed)
- **Catppuccin Mocha** theme across both tools
- **Dev layout** — a ready-to-go workspace with an editor pane and two utility panes

Everything is managed declaratively: packages in a `Brewfile`, configs symlinked via [GNU Stow](https://www.gnu.org/software/stow/).

## Get Started

### Prerequisites

- macOS (Apple Silicon or Intel)
- Terminal access (use the built-in Terminal.app to bootstrap)

### Step 1: Clone this repo

```bash
git clone https://github.com/ryandean/dotfiles ~/dotfiles
cd ~/dotfiles
```

### Step 2: Run the bootstrap script

```bash
./bootstrap.sh
```

This will:

1. Install [Homebrew](https://brew.sh) (if you don't have it)
2. Install Ghostty, Zellij, and Stow from the `Brewfile`
3. Symlink all configs into `~/.config/`
4. Verify everything installed correctly

### Step 3: Open Ghostty

Launch **Ghostty** from `/Applications` or Spotlight (`Cmd+Space` → "Ghostty").

### Step 4: Start Zellij

```bash
zellij
```

Or use the included dev layout (main pane + two utility panes):

```bash
zellij --layout dev
```

That's it. You're done.

## What's Included

```
dotfiles/
├── Brewfile                          # Packages to install
├── bootstrap.sh                      # One-command setup
├── ghostty/.config/ghostty/config    # Ghostty settings
└── zellij/.config/zellij/
    ├── config.kdl                    # Zellij settings
    └── layouts/dev.kdl               # Dev workspace layout
```

## Customizing

Edit the config files in this repo, then re-run Stow to update the symlinks:

```bash
cd ~/dotfiles
stow -R ghostty zellij
```

### Change the font

Edit `ghostty/.config/ghostty/config`:

```
font-family = Your Font Name
font-size = 14
```

### Change the theme

Both tools use `catppuccin-mocha` by default. To change:

- Ghostty: edit `theme =` in `ghostty/.config/ghostty/config`
- Zellij: edit `theme` in `zellij/.config/zellij/config.kdl`

## Uninstalling

Remove the symlinks without deleting the repo:

```bash
cd ~/dotfiles
stow -D ghostty zellij
```

## Updating

Pull the latest and re-stow:

```bash
cd ~/dotfiles
git pull
brew bundle
stow -R ghostty zellij
```
