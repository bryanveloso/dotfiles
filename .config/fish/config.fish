set fish_greeting ""

set -gx TERM xterm-256color

# Theme
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Set environment variables.
set -g fish_user_paths /opt/homebrew/bin $fish_user_paths
set -g fish_user_paths /opt/homebrew/sbin $fish_user_paths
set -g fish_user_paths $HOME/.local/bin $fish_user_paths

# Set GPG TTY
set -x GPG_TTY (tty)

# Initialize Starship
starship init fish | source
