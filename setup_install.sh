sudo apt update
sudo apt install python3-pip
sudo pip3 install PySpice
sudo pip3 install kneed
sudo snap refresh
sudo snap install code --classic
sudo apt install nedit
sudo apt install git-all
sudo apt-get install python3-tk
sudo apt install automake -y
sudo apt install libtool -y
#Install SKY130PDK#
cd $HOME/Downloads
git clone https://github.com/nataraj-pinakapani/sky130.git
mkdir -p $HOME/projects/designmyic/cad/pdk 
cp -r $HOME/Downloads/sky130/ $HOME/projects/designmyic/cad/pdk
sudo apt-get install python3-tk

#cd /home/nataraj
#git clone git://opencircuitdesign.com/open_pdks

#git clone https://github.com/google/skywater-pdk
#cd skywater-pdk
#git submodule init libraries/sky130_fd_io/latest
#git submodule init libraries/sky130_fd_pr/latest
#git submodule init libraries/sky130_fd_sc_hd/latest
#git submodule init libraries/sky130_fd_sc_hvl/latest
#git submodule init libraries/sky130_fd_sc_hdll/latest
#git submodule init libraries/sky130_fd_sc_hs/latest
#git submodule init libraries/sky130_fd_sc_ms/latest
#git submodule init libraries/sky130_fd_sc_ls/latest
#git submodule init libraries/sky130_fd_sc_lp/latest
#git submodule update
#make timing 
#cd ../open_pdks
#./configure --enable-sky130-pdk=/home/nataraj/skywater-pdk --prefix=/home/nataraj
#./configure --enable-sky130-pdk=/home/nataraj/skywater-pdk --prefix=/home/nataraj --with-ef-style --enable-xschem-sky130 --with-sky130-variants= all
#make
#make install
#make clean

#INSTALL XSCHEM
sudo apt update
sudo apt install flex libX11-6 libx11-dev libxrender1 libxrender-dev
sudo apt install libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev
sudo apt install tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev flex bison
sudo apt install libxpm4 libxpm-dev mawk gawk
cd $HOME/Downloads
tar xfz xschem-3.0.0.tar.gz
cd xschem-3.0.0/ 
./configure
make 
sudo make install
make clean


#INSTALL SKY130 SETUP FOR XSCHEM
mkdir -p $HOME/projects/designmyic/cad/pdk/xschem/
cd $HOME/projects/designmyic/cad/pdk/xschem/
mkdir simulations
git clone https://github.com/StefanSchippers/xschem_sky130.git
cd xschem_sky130 
cp $HOME/Downloads/xschemrc .
ls -l
#This is the invoke path to open xschem

#INSTALL NGSPICE
sudo apt-get update
sudo apt-get -y install ngspice





