# see the most space consuming files in the firectory on top:
du -h / | sort -nr | more

# sort processes by column number (starts from column 1 PID)
ps aux | sort -nr -k 3 | more

# option -S allows to have a long output in a single line
ps aux | sort -nr -k 3 | less -S

# sort - nr sorting (biggest on top) by both CPU and memory (columnds number 3, 4) in an easy readable way option -S allows to have a long output in a single line
ps aux | sort -nr -k 3,4 | less -S

#check the traffic via a given network card
tcpdump -i enp0s3

#check the given service status
systemctl status firewalld.service
