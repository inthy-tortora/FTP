apt-get update
apt-get upgrade
apt-get install -y sudo 
apt-get install -y proftpd
sudo useradd -m Merry -p "$(echo "kalimac" | openssl passwd -l -stdin)"
sudo useradd -m  Pippin -p "$(echo "secondbreakfast" | openssl passwd -l -stdin)"
ln -sf /home/test/doc/proftpd.conf /etc/proftpd/proftpd.conf
apt-get install -y openssl
mkdir /etc/proftpd/ssl
openssl req -new -x509 -keyout /etc/proftpd/ssl/proftpd.key.pem -days 365 -nodes -out /etc/proftpd/ssl/proftpd.cert.pem
chmod 600 /etc/proftpd/ssl/proftpd.*
ln -sf /home/test/doc/tls.conf /etc/proftpd/tls.conf 
sudo service proftpd restart
