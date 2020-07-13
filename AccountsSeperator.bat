@echo off
color 4f

type *.json > final0.txt

cls

findstr "client_email" "final0.txt" > final.txt 
DEL final0.txt

awk "{print$2}" "final.txt" > final1.txt
DEL final.txt

sed "s/.$//" "final1.txt" > final2.txt
DEL final1.txt

sed "s/.$//; s/^.//" "final2.txt" > final3.txt
DEL final2.txt

sed "0~10 s/$/\n /g" "final3.txt" > final_email.txt
DEL final3.txt
:::
:::
:::                                    _      _____                           _                    __ 
:::     /\                            | |    / ____|                         | |                  /_ |
:::    /  \   ___ ___ ___  _   _ _ __ | |_  | (___   ___ _ __   ___ _ __ __ _| |_ ___  _ __  __   _| |
:::   / /\ \ / __/ __/ _ \| | | | '_ \| __|  \___ \ / _ \ '_ \ / _ \ '__/ _` | __/ _ \| '__| \ \ / / |
:::  / ____ \ (_| (_| (_) | |_| | | | | |_   ____) |  __/ |_) |  __/ | | (_| | || (_) | |     \ V /| |
::: /_/    \_\___\___\___/ \__,_|_| |_|\__| |_____/ \___| .__/ \___|_|  \__,_|\__\___/|_|      \_/ |_|
:::                                                     | |                                           
:::                                                     |_|                                           
:::
:::

for /f "delims=: tokens=*" %%A in ('findstr /b ::: "%~f0"') do @echo(%%A
echo Accounts Saved in final_email.txt Enjoy :) 
@pause