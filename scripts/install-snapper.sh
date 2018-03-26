sudo apt install -y python3 libgtksourceview-3.0-1 gir1.2-gtksource-3.0 python3-dbus python3-setuptools snapper

sudo git clone --depth=1 https://github.com/ricardo-vieira/snapper-gui/ /opt/snapper-gui
cd /opt/snapper-gui/
sudo python3 ./setup.py install
