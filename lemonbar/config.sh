#!/usr/bin/bash

BG='171a1f'
FG='e7eaef'
UP='72ddf7'
DN='ef476f'
YL='f7dd72'

Workspace(){
	echo -n "%{!u}%{U#$DN}  %{F-}$(xdotool get_desktop)  %{!u}%{U-}"
}

Window(){
	WN=$(xdotool getwindowfocus)
	[[ ! -z $WN ]] && echo -e "$(xdotool getwindowname $WN)"
}

Sound(){
	MIX="amixer -D pulse sget Master"
	NOTMUTED=$($MIX | grep "\[on\]")
	if [[ ! -z $NOTMUTED ]] ; then
		VOL=$($MIX | grep 'Left:' | awk -F'[][]' '{ print $2 }')
		echo -e "${VOL}"
	else
		echo -e "%{F#$DN}${VOL}%{F-}"
	fi
}

Memory(){
	echo -e "$(free --si -h | grep 'Mem:' | awk '{ printf "%s/%s", $3, $2 }')"
}

Clock(){
	TIME=$(date "+%m-%d %H:%M")
	echo -e -n "$TIME"
}

while true; do
    echo -n "%{F-}%{l}$(Workspace)"
    echo -n "%{F-}%{c}$(Window)"
    echo -e "%{r}%{!u}%{U#$UP} $(Sound) %{!u} %{!u}%{U#$YL} $(Memory) %{!u} %{!u}%{U#$DN} $(Clock) %{!u}%{U-}"
	sleep 0.1s
done
