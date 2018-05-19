[ /etc/motd -nt /etc/passwd ]; echo $?
[ ! /etc/motd -nt /etc/passwd ]; echo $?
[ -e /etc/passwd ]; echo $?
