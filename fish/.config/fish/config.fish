# Remove fish greeting
set fish_greeting ""

# Terminal settings
set -gx TERM xterm-256color

# Theme settings
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

# PATH management using fish_add_path (more robust than manual PATH setting)
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path $HOME/.local/bin

# Development tools
fish_add_path $HOME/Library/pnpm
fish_add_path $HOME/.bun/bin

# Environment variables
set -gx GPG_TTY (tty)
set -gx PNPM_HOME "$HOME/Library/pnpm"
set -gx BUN_INSTALL "$HOME/.bun"

# Abbreviations for common commands
if status is-interactive
    # Git abbreviations
    abbr -a g git
    abbr -a gs git status
    abbr -a ga git add
    abbr -a gc git commit
    abbr -a gp git push
    abbr -a gl git pull
    abbr -a gd git diff
    abbr -a gb git branch
    abbr -a gco git checkout
    abbr -a glog git log --oneline --graph
    
    # Directory navigation
    abbr -a .. cd ..
    abbr -a ... cd ../..
    abbr -a .... cd ../../..
    abbr -a l ls -la
    abbr -a ll ls -l
    
    # Common commands
    abbr -a c clear
    abbr -a h history
    abbr -a reload exec fish
end

# Initialize Starship prompt
starship init fish | source

# Conda initialization
if test -f /opt/miniconda3/bin/conda
    eval /opt/miniconda3/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/miniconda3/etc/fish/conf.d/conda.fish"
        . "/opt/miniconda3/etc/fish/conf.d/conda.fish"
    else
        fish_add_path /opt/miniconda3/bin
    end
end