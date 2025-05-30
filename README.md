# Bryan's Dotfiles

A collection of configuration files for macOS development setup using GNU Stow.

## Prerequisites

```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install required tools
brew install stow fish starship git-delta
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

## Customization

### Adding New Configurations

1. Create a new directory in `.dotfiles/`
2. Structure it as it would appear in your home directory
3. Add it to the Makefile install/uninstall targets
4. Run `stow <package-name>`

### Modifying Existing Configs

Edit files directly in the `.dotfiles` directory. Changes will be reflected immediately since they're symlinked.

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

## Notes

- All configurations follow modern best practices
- SSH signing key is email-agnostic (works with any email address)
- Fish shell abbreviations expand for better command history
- Starship is optimized for development workflows