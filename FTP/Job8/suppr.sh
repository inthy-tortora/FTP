sudo service proftpd stop
deluser --remove-home Merry
deluser --remove-home Pippin 
sudo apt remove -y proftpd*
sudo apt remove -y sudo 
