# dotfiles

These are my `.files`. They help me keep my life sane. The last time I committed to this repository was in 2014... and a lot has changed since then. Not the least of which is I switched from __zsh__ to __fish__ shell, you know, if you ignore all the important stuff.

This is a complete rewrite using GNU Stow for elegant symlink management and modern best practices.

## Prerequisites

| Tool                                | Description                                                                                                                  |
| ----------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- |
| [Homebrew](https://brew.sh)         | Self-explanatory, really.                                                                                                    |
| [Fish shell](https://fishshell.com) | It comes with a lot of great things out of the box, like auto-completions. But it's NOT `sh`-based, so, don't use `EXPORT`.  |
| [Starship](http://starship.rs)      | A really cool cross-shell prompt that does all the "powerline" things without me having to fiddle with shell configurations. |
| [GNU Stow](https://www.gnu.org/software/stow/) | Symlink farm manager for organizing dotfiles cleanly. |

```bash
# Install everything you need
brew install stow fish starship git-delta gh
```

## Quick Setup

```bash
# Clone this repository
git clone https://github.com/bryanveloso/dotfiles.git ~/.dotfiles

# Navigate to dotfiles directory
cd ~/.dotfiles

# Install all configurations
make install
```

## What's Included

### Git Configuration
- Optimized `.gitconfig` with best practices
- SSH signing with 1Password integration
- Delta diff viewer with syntax highlighting
- Global `.gitignore` for common files
- Useful aliases and safety settings

### Fish Shell
- Clean configuration with Starship prompt
- Useful abbreviations for common commands
- Proper PATH management with `fish_add_path`
- Development tools integration (Node.js, Python, etc.)

### Starship Prompt
- Custom symbols and styling
- Git status and metrics
- Command duration display
- Package and language detection

### GitHub CLI
- Pre-configured with useful aliases
- HTTPS protocol setting

## Usage

```bash
# Install all dotfiles
make install

# Uninstall (remove symlinks)
make uninstall

# Backup existing configs before install
make backup

# Restore from backup
make restore

# Clean backup files
make clean

# Show help
make help
```

## Manual Installation

If you prefer not to use the Makefile:

```bash
cd ~/.dotfiles
stow git fish starship github
```

## Structure

```
.dotfiles/
├── fish/
│   └── .config/fish/
│       ├── config.fish
│       └── fish_variables
├── git/
│   ├── .gitconfig
│   └── .gitignore_global
├── github/
│   └── .config/gh/
│       └── config.yml
├── starship/
│   └── .config/starship.toml
├── Makefile
└── README.md
```

## Best Practices Implemented

- **Git**: Safety settings, auto-pruning, SSH signing
- **Fish**: Modern path management, useful abbreviations
- **Starship**: Comprehensive status display, performance optimized
- **Cross-platform**: Works on macOS with considerations for other systems

## Inspirations

Crazy ideas beget other crazy ideas, and for those I have these fine people to thank:

* [Julian Nadeau][1] for their lovely looking [dotfiles][2] with 1Password integration.
* [Josh Nichols][3] and [Ani Betts][4] for talking about cool dotfiles.
* [Takuya Matsuyama][5] for their [no-nonsense dotfiles][6].

[1]: https://github.com/jules2689
[2]: https://github.com/jules2689/dotfiles
[3]: https://github.com/technicalpickles
[4]: https://github.com/anaisbetts
[5]: https://github.com/craftzdog
[6]: https://github.com/craftzdog/dotfiles-public

## Notes

- All configurations follow modern best practices
- SSH signing key is email-agnostic (works with any email address)
- Fish shell abbreviations expand for better command history
- Starship is optimized for development workflows
