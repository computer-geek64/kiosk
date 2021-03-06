#!/bin/bash
# i3lock_sleep.sh

file='/home/ashish/.i3lock'
if [ ! -f "${file}" ]; then
  echo '0' > "${file}"
fi

if [[ $(cat "${file}") == '0' ]]; then
  echo '1' > "${file}"
  xset dpms force off
  i3lock -n --screen 1 --blur 3 --clock
  xset s off -dpms
  echo '0' > "${file}"
fi
