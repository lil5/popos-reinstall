#! /bin/bash

# tested: works

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ -d '/opt/android-studio' ]; then
	echo 'Android Studio already installed. aborting...'
	exit 1
fi

if [[ ! -f ~/Downloads/android-studio.zip ]]; then
	echo 'Please download the latest version to your downloads folder and rename it to "android-studio.zip"'
	exit 1
fi

sudo apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
sudo apt -y install default-jdk

sudo unzip -q ~/Downloads/android-studio.zip -d /opt/

/opt/android-studio/bin/studio.sh

echo '
# Android Studio
export PATH=~/Android/Sdk/tools:~/Android/Sdk/platform-tools:$PATH
export ANDROID_HOME=~/Android/Sdk
' >> ~/.bashrc
