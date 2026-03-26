## Decision Log

### Clone URL in README
**Question**: README uses `github.com/ryandean/dotfiles` but the actual repo is `github.com/Ducktank/dotfiles`
**Decision**: Fix to use actual GitHub username `Ducktank`
**Rationale**: The wrong URL would cause clone to fail — the most critical step
**Override**: Update README if repo is transferred

### Zellij config references iTerm2
**Question**: The Zellij config comments reference "ADHD-optimized for iTerm2" — should this be updated for Ghostty?
**Decision**: Update comments to be terminal-agnostic since this is a Ghostty setup
**Rationale**: A friend receiving this repo would be confused by iTerm2 references when the setup installs Ghostty
**Override**: N/A

### Stow symlink verification in bootstrap.sh
**Question**: The verification checks for symlinks on individual files (`-L config.kdl`), but Stow links directories, not files
**Decision**: Fix verification to check directory symlinks (`-L ghostty`) and file accessibility (`-f config`)
**Rationale**: Current checks would always fail on a fresh install, reporting false negatives
**Override**: N/A — this is a bug fix

### Intel Mac support
**Question**: Does the bootstrap handle Intel Macs where Homebrew installs to `/usr/local`?
**Decision**: Add Intel Homebrew path fallback in bootstrap
**Rationale**: The friend has an Intel i7 Mac — `/opt/homebrew` is Apple Silicon only
**Override**: N/A

### Existing config conflict handling
**Question**: What happens if the friend already has `~/.config/ghostty/` or `~/.config/zellij/`?
**Decision**: Add `--adopt` flag to Stow and explain backup behavior in README
**Rationale**: Stow will refuse to link over existing files. `--adopt` moves existing files into the dotfiles tree (preserving them in git's working directory for review)
**Override**: Remove `--adopt` if you want strict "clean machine only" behavior

### Font dependency
**Question**: JetBrains Mono is specified but not installed via Brewfile
**Decision**: Add `font-jetbrains-mono` cask to Brewfile
**Rationale**: Without the font, Ghostty falls back to a system font — the experience won't match what's promised
**Override**: Remove from Brewfile if you want users to pick their own font

### README polish
**Question**: Does the README look professional enough to share?
**Decision**: Add a screenshot/preview section header, cleaner formatting, and a "What you get" visual description
**Rationale**: First impression matters — "can't look like a turd"
**Override**: N/A

### License
**Question**: Should the repo have a license?
**Decision**: Add MIT license — standard for dotfiles repos
**Rationale**: Makes it clearly shareable. No license = ambiguous rights
**Override**: Change to any preferred license
