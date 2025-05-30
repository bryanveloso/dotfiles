.PHONY: help install uninstall backup restore clean

# Default target
help:
	@echo "Available commands:"
	@echo "  install    - Install all dotfiles using GNU Stow"
	@echo "  uninstall  - Remove all symlinks"
	@echo "  backup     - Backup existing dotfiles"
	@echo "  restore    - Restore from backup"
	@echo "  clean      - Remove backups"
	@echo ""
	@echo "Prerequisites:"
	@echo "  brew install stow"

# Install all dotfiles
install: backup
	@echo "Installing dotfiles with GNU Stow..."
	stow git
	stow fish
	stow starship
	stow github
	@echo "✅ Dotfiles installed successfully!"
	@echo ""
	@echo "🔄 Restart your terminal or run 'exec fish' to apply changes"

# Uninstall all dotfiles
uninstall:
	@echo "Removing dotfile symlinks..."
	stow -D git
	stow -D fish
	stow -D starship
	stow -D github
	@echo "✅ Dotfiles uninstalled"

# Backup existing dotfiles
backup:
	@echo "Creating backup of existing dotfiles..."
	@mkdir -p backup
	@if [ -f ~/.gitconfig ]; then cp ~/.gitconfig backup/gitconfig.bak; fi
	@if [ -f ~/.gitignore_global ]; then cp ~/.gitignore_global backup/gitignore_global.bak; fi
	@if [ -f ~/.config/fish/config.fish ]; then cp ~/.config/fish/config.fish backup/config.fish.bak; fi
	@if [ -f ~/.config/fish/fish_variables ]; then cp ~/.config/fish/fish_variables backup/fish_variables.bak; fi
	@if [ -f ~/.config/starship.toml ]; then cp ~/.config/starship.toml backup/starship.toml.bak; fi
	@if [ -f ~/.config/gh/config.yml ]; then cp ~/.config/gh/config.yml backup/gh_config.yml.bak; fi
	@echo "✅ Backup complete"

# Restore from backup
restore:
	@echo "Restoring from backup..."
	@if [ -f backup/gitconfig.bak ]; then cp backup/gitconfig.bak ~/.gitconfig; fi
	@if [ -f backup/gitignore_global.bak ]; then cp backup/gitignore_global.bak ~/.gitignore_global; fi
	@if [ -f backup/config.fish.bak ]; then cp backup/config.fish.bak ~/.config/fish/config.fish; fi
	@if [ -f backup/fish_variables.bak ]; then cp backup/fish_variables.bak ~/.config/fish/fish_variables; fi
	@if [ -f backup/starship.toml.bak ]; then cp backup/starship.toml.bak ~/.config/starship.toml; fi
	@if [ -f backup/gh_config.yml.bak ]; then cp backup/gh_config.yml.bak ~/.config/gh/config.yml; fi
	@echo "✅ Restored from backup"

# Clean backup files
clean:
	@echo "Removing backup files..."
	rm -rf backup/
	@echo "✅ Backups cleaned"

# Check if stow is installed
check-stow:
	@which stow > /dev/null || (echo "❌ GNU Stow not found. Install with: brew install stow" && exit 1)