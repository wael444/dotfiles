#!/usr/bin/env zsh

command_not_found_handler () {
    local saying=(
        "stop typing so fast expecting to get what you want but you end up with a Stupid Moment instead."
        "beep boop boop beep beep beep boop, it means you are stupid."
        "i'm considering installing windows on myself."
        "i thought you were good at this..."
        "try typing a little bit slowly."
        "aren't you good at your job?"
        "don't make typos next time"
        "stope beinge ze stubid."
        "stop being retarded."
		"rip bozo goofy ahh"
        "wtf are you doing?"
        "are you retarded?"
        "i'm dissapointed."
        "nice job $USER."
        "fuck you $USER."
        "you suck."
        "you idiot."
        "nice typo."
        "rip bozo"
        "plz"
        "lol"
        "nt"
    )
    print -P "%F{1}%B%m%f%b: $(shuf -n 1 -e "${saying[@]}")"
    printf "%s: command not found\n" "$1" >&2
    return 127
}

