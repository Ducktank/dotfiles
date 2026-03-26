#!/bin/bash
set -euo pipefail

# Terminal Environment Bootstrap
# One command to install and configure Ghostty + Zellij on macOS.

DOTFILES_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Terminal environment bootstrap"
echo ""

# Step 1: Homebrew
if ! command -v brew &>/dev/null; then
    echo "==> Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # Add Homebrew to PATH for this session (Apple Silicon)
    if [[ -f /opt/homebrew/bin/brew ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    fi
else
    echo "==> Homebrew already installed"
fi

# Step 2: Install packages from Brewfile
echo "==> Installing packages (Ghostty, Zellij, Stow)..."
brew bundle --file="$DOTFILES_DIR/Brewfile"

# Step 3: Stow configs into ~/.config
echo "==> Linking configs..."
cd "$DOTFILES_DIR"
stow -v --target="$HOME" ghostty
stow -v --target="$HOME" zellij

# Step 4: Verify
echo ""
echo "==> Verifying installation..."
echo ""

OK=true

if command -v ghostty &>/dev/null || [[ -d "/Applications/Ghostty.app" ]]; then
    echo "  ✓ Ghostty installed"
else
    echo "  ✗ Ghostty not found"
    OK=false
fi

if command -v zellij &>/dev/null; then
    echo "  ✓ Zellij $(zellij --version)"
else
    echo "  ✗ Zellij not found"
    OK=false
fi

if [[ -L "$HOME/.config/ghostty/config" ]]; then
    echo "  ✓ Ghostty config linked"
else
    echo "  ✗ Ghostty config not linked"
    OK=false
fi

if [[ -L "$HOME/.config/zellij/config.kdl" ]]; then
    echo "  ✓ Zellij config linked"
else
    echo "  ✗ Zellij config not linked"
    OK=false
fi

echo ""
if $OK; then
    echo "==> Done! Open Ghostty from /Applications and Zellij starts automatically."
    echo "    To start Zellij manually: zellij"
    echo "    To use the dev layout:    zellij --layout dev"
else
    echo "==> Some checks failed. See above."
    exit 1
fi
