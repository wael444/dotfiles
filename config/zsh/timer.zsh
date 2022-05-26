#!/usr/bin/env zsh
## 100% stolen

zmodload zsh/datetime

zsh_cmdtime_time() { echo $EPOCHREALTIME }

zsh_cmdtime() {
	[ $__zcmdtime = 0 ] && return 0
	if [ -n "${zsh_cmdtime_start}" ]; then
		local cmd_end_time=$(zsh_cmdtime_time)
		local tdiff=$((cmd_end_time - zsh_cmdtime_start))
		unset zsh_cmdtime_start
		local hours=$(printf '%u' $(($tdiff / 3600)))
		local mins=$(printf '%u' $((($tdiff - hours * 3600) / 60)))
		local secs=$(printf "%.3f" $(($tdiff - 60 * mins - 3600 * hours)))
		if [[ ! "${mins}" == "0" ]] || [[ ! "${hours}" == "0" ]]; then
			secs=${secs%\.*}
		elif [[ "${secs}" =~ "^0\..*" ]]; then
			secs="${${${secs#0.}#0}#0}m"
		else
			secs=${secs%?}
		fi
		local duration_str=$(echo "${hours}h:${mins}m:${secs}s")
		local format="${TIMER_FORMAT:-%d}"
		echo "${format//\%d/${${duration_str#0h:}#0m:}}"
	fi
}

