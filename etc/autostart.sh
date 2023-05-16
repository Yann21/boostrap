#!/usr/bin/env bash
# Yann Hoffmann
# Equivalent of xinit for startup programs
# or $XDG_CONFIG_HOME/autostart/*.desktop

#"$HOME/.screenlayout/arandrrc_docked_laptop.sh" &                   # Double monitor layout
autorandr -c
nitrogen --restore &                                # Wallpaper
picom -b &                                          # Compositor, transparency
autokey-gtk &                                       # Rebinds bash bindings all over the place
copyq &                                             # Clipboard manager
numlockx on &                                       # Numlock (previously in lightdm.conf)
xset r rate 190 8 &                                 # Typematic delays - previously 190 28
mousetrap -t 5 &                                    # Auto hide mouse after 5s
ulauncher --hide-window --no-window-shadow &        # Dynamic menu
GTK_USE_PORTAL=1 firefox &                          # Firefox
xrdb ~/.Xresources &
emacs &                                             # The one and only
#ticktick &                                         # GTD
mailspring &                                        # Mail client

# Synchronize important directories between machines
gitwatch -r origin -b main "$HOME/Documents/Application/KnowledgeManager" &
gitwatch -r origin -b main "$HOME/.local/share/calibre" &
#gitwatch -r origin -b master $HOME/.xmonad &
#gitwatch -r origin -b master $HOME/.dotfiles &
#gitwatch -r origin -b master $HOME/system &


# @Home
if [[ $(uname --all) =~ "arch" ]]; then
#if [[ $(hostname) =~ "yann-desktop" ]]; then
#if [[ true ]]; then
    redshift -c "$HOME/.config/redshift/redshift.conf" &  # Go easy on the eyes
    ckb-next -b &                                       # Corsair bindings
    code &
    udiskie &                                           # USB daemon
    aw-server &                                         # Windows and time tracker (*)
    xscreensaver --no-splash -verbose &                 # Aerial screensaver
    #noip2 -c /etc/no-ip2.conf &  # taken care of by systemd
    bluetooth-autoconnect & 
    vorta --daemonize &                                 # Backup
fi

# Record screen (*) we're oom
#/usr/bin/simplescreenrecorder \
    #--start-hidden \
    #--start-recording \
    #--settingsfile=/home/yann/.ssr/settings_loy.conf \
    #--no-systray &

# System tray
#trayer \
    #--edge bottom \
    #--align center \
    #--SetDockType true \
    #--SetPartialStrut true \
    #--expand true \
    #--width 5 \
    #--transparent true \
    #--alpha 0 \
    #--tint 0x0034435E \
    #--heighttype pixel \
    #--height 18 &

# * data collection
