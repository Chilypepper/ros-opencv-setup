#/bin/bash
clear
sudo apt-get update

sudo apt-get -y remove unity-webapps-common
sudo apt-get -y remove fonts-opensymbol libreoffice libreoffice-\* 
sudo apt-get -y remove openoffice.org-dtd-officedocument1.0
sudo apt-get -y removepython\*-uno uno-libs3-\* ure ure-dbg
sudo apt-get -y install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
sudo apt-get -y install qt5-default libvtk6-dev

sudo apt-get -y install zlib1g-dev libjpeg-dev libwebp-dev libpng-dev libtiff5-dev
sudo apt-get -y install libjasper-dev libopenexr-dev libgdal-dev
sudo apt-get -y install libdc1394-22-dev libavcodec-dev libavformat-dev libswscale-dev libtheora-dev 
sudo apt-get -y install libvorbis-dev libxvidcore-dev libx264-dev
sudo apt-get -y install yasm libopencore-amrnb-dev libopencore-amrwb-dev libv4l-dev libxine2-dev 
sudo apt-get -y install libtbb-dev libeigen3-dev
sudo apt-get -y install python-dev python-tk 
sudo apt-get -y install python-numpy python3-dev python3-tk python3-numpy 
sudo apt-get -y install ant default-jdk

sudo apt-get -y install tcl-vtk
sudo apt-get -y install python-vtk

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu trusty main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv-key 0xB01FA116
sudo apt-get update
sudo apt-get install -y ros-jade-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/jade/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get -y install python-rosinstall
sudo apt-get -y install ros-jade-joystick-drivers
sudo apt-get -y install openssh-server
sudo apt-get -y install libasio-dev
sudo apt-get -y install joystick
sudo apt-add-repository -y ppa:falk-t-j/qtsixa
sudo apt-get update
sudo apt-get -y install sixad
sudo apt-get -y install ros-jade-pointgrey-camera-driver
#RIP arduino
cd ~
git clone https://github.com/Itseez/opencv
cd opencv
sudo mkdir Release
cd Release
sudo cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WI$
sudo make
sudo make install
cd ~
sudo ldconfig
git clone https://github.com/Chilypepper/brokenGlasses
cd brokenGlasses/
rm -r -f build/
rm -f -f devel/
cd ~
git clone https://github.com/Chilypepper/brokenCamera
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get -y install sublime-text-installer
