#
# Regular cron jobs for the f-engrave package
#
0 4	* * *	root	[ -x /usr/bin/f-engrave_maintenance ] && /usr/bin/f-engrave_maintenance
