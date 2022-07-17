# da dotfiles - ملفات نقطية
just me dotfiles

## usage 
+ have absolutely nothing in your home directory or just be ready.
```sh
./deploy.sh
```

## bin/
+ colors - display 0-15 ANSI colors with their numbers
+ doasedit - (unsafe) edit a non user writable file
+ gp - generate 64 random letter string and copy to X clipboard
+ lfw - open a lf with ueberzug image handler with its env vars
+ m - menu script with 
	+ prompt - yes/no
	+ kill - choose a program via `fzf` to kill -9
	+ path - get all programs in path
	+ run - open a terminal window and select a program from path with `fzf` and launch it whilst piping its output to `nott`
+ massrn - rename files to their proper name via their metadata
+ rel - on file change do
	+ ex - clear and re-execute
	+ rex - clear and execute command
	+ re - read
+ sbq - dwm statusbar query script, TODO: rewrite in posix
+ sf - shitty linux fetch
+ shot - flameshot wrapper
+ stspot - launch spotify with its class,instance,title because it can't
+ svlw - socklog log wrapper for colors, time in kernel logs, output to notification daemon with relevant pango markup
+ tl - let the computer pick - yes, no, maybe, idk
+ volctl - pulse/pipewire audio controller that can output to notification with volume bar
+ xchangemirror - change all primary, nonfree, multilib, nonfree multilib, xbps mirrors from argument
+ xcp - sxcs/xcolor wrapper color picker
+ xdb - xrdb wrapper actions
+ xrankmirrors - rank available XBPS mirrors and sort them by download speed and connect time
