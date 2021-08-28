# begin logging
#script --timing install_dc_jp46_p1.log # thx to @naisy!

# Step 3
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip    libjpeg8-dev liblapack-dev libblas-dev gfortran
sudo apt-get install -y python3-dev python3-pip
sudo apt-get install -y libxslt1-dev libxml2-dev libffi-dev libcurl4-openssl-dev    libssl-dev libpng-dev libopenblas-dev
sudo apt-get install -y git nano
sudo apt-get install -y openmpi-doc openmpi-bin libopenmpi-dev libopenblas-dev

# Step 3.1 own utilities
sudo -H pip3 install -U jetson-stats
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update -y
sudo apt-get install -y terminator

sudo apt-get install -y docker-compose

sudo apt-get install -y v4l-utils

sudo groupadd docker
sudo usermod -aG docker $USER
docker run hello-world

mkdir -p ~/dev;cd dev
git clone https://github.com/JetsonHacksNano/installVSCode.git
cd installVSCode
./installVSCodeWithPython.sh

cd dev
git clone https://github.com/JetsonHacksNano/CSI-Camera.git
cd dev
git clone https://github.com/jetsonhacks/installROS2.git

# Step 4
cd ~
pip3 install virtualenv
python3 -m virtualenv -p python3 env --system-site-packages
echo "source env/bin/activate" >> ~/.bashrc
source ~/.bashrc

# end part 1
# REBOOT!
#
