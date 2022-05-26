#!/usr/bin/env -S bash

# required for files/
shopt -s dotglob

to="$HOME"
from="$(pwd)"

helperfiles() {
	mkdir -pv $to/$2
	for files in $from/$1/*; do
		tofile=$to/$2/${files##*/}
		[ -e $tofile ] && rm -rfv $tofile
		ln -sfv $files $tofile
	done
}

helperdir() {
	mkdir -pv $to/$2
	[ -e $to/$2/$1 ] && rm -rfv $to/$2/$1
	ln -sfv $from/$1 $to/$2/$1
}

helperfiles files
helperfiles config ".config"
helperdir txt ".local/share"
helperfiles applications ".local/share/applications"
helperdir scripts ".local/bin"

## firefox
firefoxpath=$to/.mozilla/firefox
firefoxprofile=$firefoxpath/default
[ -d $firefoxpath ] && rm -rfv $firefoxpath
mkdir -pv $firefoxprofile
cat << EOF > $firefoxpath/profiles.ini
[Profile0]
Name=${firefoxprofile##*/}
IsRelative=1
Path=${firefoxprofile##*/}
EOF
ln -sfv $from/firefox/user-overrides.js $firefoxprofile
ln -sfv $from/firefox/chrome $firefoxprofile
for filestoget in user.js prefsCleaner.sh updater.sh; do
	url=https://raw.githubusercontent.com/arkenfox/user.js/master
	wget -q --show-progress $url/$filestoget -O $firefoxprofile/$filestoget
done
chmod -v a+x $firefoxprofile/*.sh
