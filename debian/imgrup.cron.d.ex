#
# Regular cron jobs for the imgrup package
#
0 4	* * *	root	[ -x /usr/bin/imgrup_maintenance ] && /usr/bin/imgrup_maintenance
