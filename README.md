# Kiosk

Alpine Linux kiosk setup for my homelab

---

## Installation

1. Install Alpine: [https://wiki.alpinelinux.org/wiki/Installation](https://wiki.alpinelinux.org/wiki/Installation)
2. Install bash: `apk add bash` and configure default shell in `/etc/passwd`
3. Configure Network Manager: [https://wiki.alpinelinux.org/wiki/NetworkManager](https://wiki.alpinelinux.org/wiki/NetworkManager)
4. Edit `/etc/networking/interfaces`
5. Add user: `adduser ashish && adduser ashish wheel && adduser ashish video && adduser ashish input`
6. Install sudo: `apk add sudo` and uncomment this line: `%wheel ALL=(ALL) ALL`
7. Enable community repository by editing `/etc/apk/repositories`
8. Setup X server: `setup-xorg-base`
9. Create `.xinitrc`: `echo 'exec i3' > /home/ashish/.xinitrc`
10. Install i3wm and other packages: `apk add i3wm terminator feh i3lock-color picom`
11. Install fonts: [https://wiki.alpinelinux.org/wiki/Fonts](https://wiki.alpinelinux.org/wiki/Fonts)
12. Install i3 config file
13. Save wallpaper: `cp src/alpine-linux-wallpaper.jpg /home/ashish/Pictures/wallpaper/alpine-linux-wallpaper.jpg`
14. Install i3lock_sleep.sh file: `cp src/i3lock_sleep.sh`