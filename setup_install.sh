cd $HOME/Downloads
git clone https://github.com/nataraj-pinakapani/sky130.git
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
sudo apt-get install python3-tk
sudo apt-get install xterm

#Install SKY130PDK#
mkdir -p $HOME/projects/designmyic/cad/pdk/downloads
cd $HOME/projects/designmyic/cad/pdk/downloads
git clone git://opencircuitdesign.com/magic
cd magic
./configure
make
sudo make install
cd ../
git clone git://opencircuitdesign.com/open_pdks
git clone https://github.com/google/skywater-pdk.git
cd skywater-pdk

git submodule init libraries/sky130_fd_io/latest
git submodule init libraries/sky130_fd_pr/latest
git submodule init libraries/sky130_fd_sc_hd/latest
git submodule init libraries/sky130_fd_sc_hvl/latest
#git submodule init libraries/sky130_fd_sc_hdll/latest
#git submodule init libraries/sky130_fd_sc_hs/latest
#git submodule init libraries/sky130_fd_sc_ms/latest
#git submodule init libraries/sky130_fd_sc_ls/latest
#git submodule init libraries/sky130_fd_sc_lp/latest
git submodule update
make timing 
cd ../open_pdks
#./configure  --prefix=$HOME/projects/designmyic/cad/pdk/ --enable-sky130-pdk=$HOME/projects/designmyic/cad/pdk/downloads/skywater-pdk --enable-gf180mcu-pdk=$HOME/projects/designmyic/cad/pdk/downloads/gf180mcu-pdk --with-sky130-variants= all --with-gf180mcu-variants=all --with-ef-style --enable-xschem-sky130 --enable-alpha-sky130 --enable-primitive-gf180mcu --enable-io-gf180mcu --disable-sc-7t5v0-gf180mcu  --disable-sc-9t5v0-gf180mcu --disable-sram-gf180mcu  --disable-sram-sky130
./configure  --prefix=$HOME/projects/designmyic/cad/pdk/ --enable-sky130-pdk=$HOME/projects/designmyic/cad/pdk/downloads/skywater-pdk --with-sky130-variants= all --with-ef-style --enable-xschem-sky130 --enable-alpha-sky130
make
make install
make clean

#INSTALL XSCHEM
sudo apt update
sudo apt install flex libx11-6 libx11-dev libxrender1 libxrender-dev
sudo apt install libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev
sudo apt install tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev flex bison
sudo apt install libxpm4 libxpm-dev mawk gawk
cd $HOME/Downloads
https://github.com/StefanSchippers/xschem.git
cd xschem
./configure
make 
sudo make install
make clean


#INSTALL SKY130 SETUP FOR XSCHEM
mkdir -p $HOME/projects/designmyic/cad/xschem/
cd $HOME/projects/designmyic/cad/xschem/
#mkdir simulations
#git clone https://github.com/StefanSchippers/xschem_sky130.git
#cd xschem_sky130 
#cp $HOME/Downloads/xschemrc .
#ls -l
#This is the invoke path to open xschem

#INSTALL NGSPICE
cd $HOME/Downloads
git clone git://git.code.sf.net/p/ngspice/ngspice
cd ngspice
sudo apt-get install libxaw7-dev
sudo apt-get install libreadline-dev
./autogen.sh
./configure --enable-xspice --enable-openmp --enable-cider --disable-debug --with-readline=yes CFLAGS="-m64 -O2" LDFLAGS="-m64 -s"
make clean
make
sudo make install
### If you get an error during installation, copy-paste error in google, you will find which package to be installed to fix the error
which ngspice
### This will tell where engspice is installed





