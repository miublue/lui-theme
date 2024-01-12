#!/usr/bin/bash

BG='171a1f'
FG='e7eaef'
UP='72ddf7'
DN='ef476f'

Workspace(){
	echo -n "%{F-}[%{F#$DN}$(xdotool get_desktop)%{F-}]"
}

Window(){
	WN=$(xdotool getwindowfocus)
	[[ ! -z $WN ]] && echo -e "%{F-}$(xdotool getwindowname $WN)"
}

Sound(){
	MIX="amixer -D pulse sget Master"
	NOTMUTED=$($MIX | grep "\[on\]")
	if [[ ! -z $NOTMUTED ]] ; then
		VOL=$($MIX | grep 'Left:' | awk -F'[][]' '{ print $2 }')
		echo -e "♫ %{F#$UP}${VOL}%{F-}"
	else
		echo -e "♫ %{F#$DN}${VOL}%{F-}"
	fi
}

Memory(){
	echo -e "☭ %{F#$UP}$(free --si -h | grep 'Mem:' | awk '{ printf "%s/%s", $3, $2 }')%{F-}"
}

Clock(){
	TIME=$(date "+%m-%d %H:%M")
	echo -e -n "◷ %{F#$UP}${TIME}%{F-}"
}

while true; do
    echo -n "%{F-}%{l}$(Workspace)"
    echo -n "%{F-}%{c}$(Window)"
    echo -e "%{r}$(Sound) ┆ $(Memory) ┆ $(Clock) "
	sleep 0.1s
done
