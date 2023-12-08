#!/usr/bin/env bash
# Yann Hoffmann
# Equivalent of xinit for startup programs
# or $XDG_CONFIG_HOME/autostart/*.desktop

autorandr -c --debug &
redshift -c "$HOME/.config/redshift/redshift.conf" &  # Go easy on the eyes
#python -m autokey.gtkui &                                        # Rebinds bash bindings all over the place
autokey-gtk &					    # Autokey
copyq &                                             # Clipboard manager
numlockx on &                                       # Numlock (previously in lightdm.conf)
mousetrap -t 5 &                                    # Auto hide mouse after 5s
ulauncher --hide-window --no-window-shadow &        # Dynamic menu
GTK_USE_PORTAL=1 firefox &                          # Firefox
xrdb ~/.Xresources &
emacs --daemon &
emacs &                      # The one and only
mailspring &
nextcloud --background &                            # Virtualization
xscreensaver --no-splash &                 # Aerial screensaver
ckb-next -b &                                       # Corsair bindings
#thunderbird &                                        # Mail client
#python3 /opt/thefanclub/overgrive/overgrive &
#xss-lock -- "$HOME/system/scripts/lock.sh" &
#code --disable-workspace-trust &

feh --bg-center ~/Documents/Media/wallpapers/drool-l.svg & # Wallpaper
xset r rate 190 20 &

if [[ $(hostname) =~ "yann-desktop" ]]; then
    udiskie &                                           # USB daemon
    aw-server &                                         # Windows and time tracker (*)
    bluetooth-autoconnect & 
    vorta --daemonize &                                 # Backup
fi

xset r rate 190 20 &
