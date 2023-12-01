#!/bin/bash

echo "จะลง gui ต้องใช้ความจำ 1.73Gจะลงหรือไม่"
read -p "จะลงก็กด y ไม่ลงก็กด n นะ: " user_input

if [ "$user_input" == "y" ]; then
clear
    echo "รอจนกว่าจะเสร็จ"
termux-setup-storage && apt upgrade -y && apt install x11-repo && apt install termux-x11-nightly -y && apt install xfce4 xfce4-goodies xfce4-session -y && echo 'termux-x11 :1 -xstartup "dbus-launch --exit-with-session xfce4-session"' >> $HOME/startgui.sh && chmod 777 startgui.sh
    echo "ลงเสร็จแล้วแล้วก็พิมพ์ ./startgui.sh"
else
    echo "โอดค"
fi
