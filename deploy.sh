#!/usr/bin/env -S sh -e
sed -n '2,5p' README.md 2>/dev/null; echo

TO="$HOME"
FROM="$PWD"

h() {
	file="$2"
	target="$3"
	case "$1" in
		fd) # $file/* -> TO/$target/*<
			[ ! -d "$TO/$target" ] && mkdir -pv "$TO/$target"
			for files in "$FROM/$file"/*; do
				tofile="$TO/$target/${files##*/}"
				[ -e "$tofile" ] && rm -rfv "$tofile"
				ln -sfv "$files" "$tofile"
			done
	    ;;
		d) # file/ -> TO/target
			[ ! -d "$TO/$file" ] && mkdir -pv "$TO/$target"
			[ -e "$TO/$target/$file" ] && rm -rfv "${TO:?}/$target/$file"
			ln -sf "$FROM/$file" "$TO/$target/$file"
		;;
		f) # file -> TO/target/file
			[ -f "$TO/$target/${file##*/}" ] && rm -rfv "${TO:?}/$target/$file"
			ln -sfv "$FROM/$file" "$TO/$target/$file" 
		;;
	esac
}

h f .zshenv 
h fd config .config
h fd applications .local/share/applications
h d txt .local/share
h d bin .local

# for GnuPG and GTK, these need to exist beforehand
mkdir -pv "$TO"/.config/gtk-3.0 "$TO"/.config/gtk-2.0 "$TO"/.local/share/gnupg
chown -Rv "$USER" "$TO"/.local/share/gnupg
chmod -v 700 "$TO"/.local/share/gnupg
