#! /bin/bash

# sudo -E bash /opt/Central-InfoSec/Tilix-Kali-Setup/tilix-kali-setup.sh kali

# Install Tilix
apt install -y tilix

# Set the user for su
user="kali"

# Run as user
su $user -m -c '

# Set the user and user path
user="kali"
userPath="/home/$user"

# Set the name for paths
name="Central-InfoSec"

# Get the profile
tdp=$(gsettings get com.gexperts.Tilix.ProfilesList default | tr -d \'"'"')
tpp="com.gexperts.Tilix.Profile:/com/gexperts/Tilix/profiles/${tdp}/"

# Set a custom key binding to start Tilix in quake mode
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Alt>q" -n -t string -s "bash -c '"'"'tilix --quake'"'"'"

# Set a custom key binding to start Tilix
xfconf-query -c xfce4-keyboard-shortcuts -p "/commands/custom/<Alt>t" -n -t string -s "bash -c '"'"'tilix'"'"'"

# Set a dark theme
gsettings set com.gexperts.Tilix.Settings theme-variant "'"'"'dark'"'"'"

# Do not use theme colors for the background and foreground
gsettings set $tpp use-theme-colors false

# Set the background color
gsettings set $tpp background-color "'"'"'#000000000000'"'"'"

# Set the foreground color
gsettings set $tpp foreground-color "'"'"'#2222DDDD2222'"'"'"

# Set the terminal title
gsettings set $tpp terminal-title "'"'"'\${id}'"'"'"

# Set the app title
gsettings set com.gexperts.Tilix.Settings app-title "'"'"'\${sessionName} \${sessionNumber} | Terminal \${id}'"'"'"

# Set the session name
gsettings set com.gexperts.Tilix.Settings session-name "'"'"'Session'"'"'"

# Use tabs for sessions
gsettings set com.gexperts.Tilix.Settings use-tabs "true"
gsettings set com.gexperts.Tilix.Settings tab-position "'"'"'bottom'"'"'"
gsettings set com.gexperts.Tilix.Settings quake-tab-position "'"'"'bottom'"'"'"

# Set title style to small to save space
gsettings set com.gexperts.Tilix.Settings terminal-title-style "'"'"'small'"'"'"

# Show the terminal title when single
gsettings set com.gexperts.Tilix.Settings terminal-title-show-when-single "true"

# Keep Quake window on top
gsettings set com.gexperts.Tilix.Settings quake-keep-on-top "true"

# Do not warn of vte config issues
gsettings set com.gexperts.Tilix.Settings warn-vte-config-issue "false"

# Copy text on select
gsettings set com.gexperts.Tilix.Settings copy-on-select "true"

# Application

# Show keyboard shortcuts
gsettings set com.gexperts.Tilix.Keybindings app-shortcuts "'"'"'<Alt>z'"'"'"

# Add new window
gsettings set com.gexperts.Tilix.Keybindings app-new-window "'"'"'<Alt>w'"'"'"

# Session

# Add new session
gsettings set com.gexperts.Tilix.Keybindings app-new-session "'"'"'<Alt>s'"'"'"

# Rename session
gsettings set com.gexperts.Tilix.Keybindings session-name "'"'"'<Alt>r'"'"'"

# Switch to left session
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-previous-session "'"'"'<Alt>j'"'"'"

# Switch to right session
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-next-session "'"'"'<Alt>k'"'"'"

# Move session to left
gsettings set com.gexperts.Tilix.Keybindings win-reorder-previous-session "'"'"'<Shift><Alt>j'"'"'"

# Move session to right
gsettings set com.gexperts.Tilix.Keybindings win-reorder-next-session "'"'"'<Shift><Alt>k'"'"'"

# Fullscreen the session
gsettings set com.gexperts.Tilix.Keybindings win-fullscreen "'"'"'<Alt>f'"'"'"

# Save current session
gsettings set com.gexperts.Tilix.Keybindings session-save "'"'"'<Primary><Alt>s'"'"'"

# Open saved session
gsettings set com.gexperts.Tilix.Keybindings session-open "'"'"'<Primary><Alt>o'"'"'"

# Exit current session
gsettings set com.gexperts.Tilix.Keybindings session-close "'"'"'<Primary><Alt>e'"'"'"

# Terminal

# Add new terminal right
gsettings set com.gexperts.Tilix.Keybindings session-add-right "'"'"'<Alt>n'"'"'"

# Add new terminal down
gsettings set com.gexperts.Tilix.Keybindings session-add-down "'"'"'<Alt>d'"'"'"

# Rename terminal through layout options
gsettings set com.gexperts.Tilix.Keybindings terminal-layout "'"'"'<Shift><Alt>r'"'"'"

# Switch to left terminal
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-previous-terminal "'"'"'<Alt>h'"'"'"

# Switch to right terminal
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-next-terminal "'"'"'<Alt>u'"'"'"

# Switch terminal by direction
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-up "'"'"'<Alt>Up'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-down "'"'"'<Alt>Down'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-left "'"'"'<Alt>Left'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-right "'"'"'<Alt>Right'"'"'"

# Switch to terminal by number
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-1 "'"'"'<Alt>1'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-2 "'"'"'<Alt>2'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-3 "'"'"'<Alt>3'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-4 "'"'"'<Alt>4'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-5 "'"'"'<Alt>5'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-6 "'"'"'<Alt>6'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-7 "'"'"'<Alt>7'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-8 "'"'"'<Alt>8'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-9 "'"'"'<Alt>9'"'"'"

# Resize terminal
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-up "'"'"'<Shift><Alt>Up'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-down "'"'"'<Shift><Alt>Down'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-left "'"'"'<Shift><Alt>Left'"'"'"
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-right "'"'"'<Shift><Alt>Right'"'"'"

# Zoom in
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in "'"'"'<Primary>equal'"'"'"

# Zoom out
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out "'"'"'<Primary>minus'"'"'"

# Zoom normal
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal "'"'"'<Primary>0'"'"'"

# Maximize terminal
gsettings set com.gexperts.Tilix.Keybindings terminal-maximize "'"'"'<Alt>m'"'"'"

# Scroll up
gsettings set com.gexperts.Tilix.Keybindings terminal-scroll-up "'"'"'<Shift>Up'"'"'"

# Scroll down
gsettings set com.gexperts.Tilix.Keybindings terminal-scroll-down "'"'"'<Shift>Down'"'"'"

# Page up
gsettings set com.gexperts.Tilix.Keybindings terminal-page-up "'"'"'<Shift>Page_Up'"'"'"

# Page down
gsettings set com.gexperts.Tilix.Keybindings terminal-page-down "'"'"'<Shift>Page_Down'"'"'"

# Find text
gsettings set com.gexperts.Tilix.Keybindings terminal-find "'"'"'<Primary>f'"'"'"

# Find next
gsettings set com.gexperts.Tilix.Keybindings terminal-find-next "'"'"'<Primary>g'"'"'"

# Find previous
gsettings set com.gexperts.Tilix.Keybindings terminal-find-previous "'"'"'<Primary>h'"'"'"

# Copy text (text is already copied on select)
gsettings set com.gexperts.Tilix.Keybindings terminal-copy "'"'"'<Alt>c'"'"'"

# Paste text
gsettings set com.gexperts.Tilix.Keybindings terminal-paste "'"'"'<Alt>v'"'"'"

# Save terminal contents
gsettings set com.gexperts.Tilix.Keybindings terminal-save "'"'"'<Primary>s'"'"'"

# Exit terminal
gsettings set com.gexperts.Tilix.Keybindings terminal-close "'"'"'<Alt>e'"'"'"

# Nautilus

# Open file browser
gsettings set com.gexperts.Tilix.Keybindings terminal-file-browser "'"'"'<Shift><Alt>o'"'"'"

# Open in Tilix
gsettings set com.gexperts.Tilix.Keybindings nautilus-open "'"'"'<Shift><Alt>t'"'"'"

# Set aliases
echo "alias ts='"'"'bash /opt/$name/Tilix-Kali-Setup/set-tilix-quake-size.sh'"'"' " >> $userPath/.bashrc
echo "alias tt='"'"'bash /opt/$name/Tilix-Kali-Setup/set-tilix-transparency.sh'"'"' " >> $userPath/.bashrc
echo "alias th='"'"'bash /opt/$name/Tilix-Kali-Setup/show-tilix-keyboard-shortcuts.sh'"'"' " >> $userPath/.bashrc

# Start Tilix
tilix > /dev/null 2>&1 &

'