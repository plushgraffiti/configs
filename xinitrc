xrandr --output DisplayPort-1 --off --output DisplayPort-0 --off --output DVI-1 --mode 1920x1080 --pos 1920x0 --rotate normal --output DVI-0 --mode 1920x1080 --pos 0x0 --rotate normal
exec ck-launch-session awesome
/usr/bin/xscreensaver -no-splash &