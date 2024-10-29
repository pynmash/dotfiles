setxkbmap -layout gb &
setxkbmap -option caps:escape &

nm-applet &

flameshot &

xrandr --output eDP1 --primary --mode 1366x768 --pos 0x112 --rotate normal --output DP1 --off --output DP2 --off --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off --output DVI-I-1-1 --mode 1920x1080 --pos 1366x0 --rotate normal &

# exec awesome
exec qtile start
