mkdir /opt/couchpotato
sudo apt-get install git-core
sudo pip install --upgrade lxml
sudo pip install --upgrade pyopenssl
mkdir /opt/couchpotato/data
cd /opt/couchpotato
git clone https://github.com/CouchPotato/CouchPotatoServer.git app
sudo chown -Rf $USER /opt/couchpotato
python /opt/couchpotato/app/CouchPotato.py 


#    (Ubuntu / Debian with upstart) To run on boot copy the init script sudo cp CouchPotatoServer/init/ubuntu /etc/init.d/couchpotato
#    (Ubuntu / Debian with upstart) Copy the default paths file sudo cp CouchPotatoServer/init/ubuntu.default /etc/default/couchpotato
#    (Ubuntu / Debian with upstart) Change the paths inside the default file sudo nano /etc/default/couchpotato
#    (Ubuntu / Debian with upstart) Make it executable sudo chmod +x /etc/init.d/couchpotato
#    (Ubuntu / Debian with upstart) Add it to defaults sudo update-rc.d couchpotato defaults
#    (Linux with systemd) To run on boot copy the systemd config sudo cp CouchPotatoServer/init/couchpotato.service /etc/systemd/system/couchpotato.service
#    (Linux with systemd) Update the systemd config file with your user and path to CouchPotato.py
#    (Linux with systemd) Enable it at boot with sudo systemctl enable couchpotato
#    Open your browser and go to http://localhost:5050/


