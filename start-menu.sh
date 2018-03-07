DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# check if user
if [ $(whoami) == 'lil5\n' ]
then
	echo 'I am not lil5. aborting...'
	exit 1
fi

echo 'Config install script for Pop_OS

Please type in a number to select a script to run:

1. Update and upgrade
2. Symlink downloads to desktop
3. Install wanted programs
4. Install more after restart
5. Home configs
'

read ANS

case $ANS in
	1)
		./scripts/update-upgrade.sh
	;;
	2)
		./scripts/symlink-downloads-desktop.sh
	;;
	3)
		./scripts/apt-install-pkglist.sh
		./scripts/install-workrave-gnome.sh
		./scripts/install-nodejs.sh
		./scripts/install-atom.sh
		./scripts/install-atom-plugins.sh
		./scripts/install-minitube.sh
		./scripts/install-abricotine.sh
		gnome-terminal -- ./scripts/install-android-studio.sh
	;;
	4)
		./scripts/install-nodejs-globals.sh
		./scripts/install-yarn.sh
	;;
	5)
		./scripts/config-home.sh
		.scripts/config-bash-ps1.sh
	;;
esac
