#!/usr/bin/env bash
for patchpath in patches/*; do
	patchname=${patchpath##*/}
	patchname=${patchname#$1-}
	patchname=${patchname%.diff}
	patchname=${patchname%%-[0-9]*}
	echo "+ [$patchname]($patchpath)"
done
