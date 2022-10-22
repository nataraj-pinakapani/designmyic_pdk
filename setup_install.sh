cd $HOME/Downloads
sudo apt update
sudo apt-get install csh
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

#Install SKY130 & GF180MCU PDK#

mkdir -p $HOME/projects/designmyic/cad/pdk/downloads
cd $HOME/projects/designmyic/cad/pdk/downloads
git clone git://opencircuitdesign.com/magic
cd magic
./configure
make
sudo make install

cd ../
git clone git://opencircuitdesign.com/open_pdks
cd ../open_pdks
./configure  --prefix=$HOME/projects/designmyic/cad/pdk/ --enable-sky130-pdk --enable-gf180mcu-pdk --with-sky130-variants=all --with-gf180mcu-variants=all --with-ef-style --enable-xschem-sky130 --enable-alpha-sky130 --enable-primitive-gf180mcu --enable-io-gf180mcu --enable-sc-7t5v0-gf180mcu  --enable-sc-9t5v0-gf180mcu --disable-sram-gf180mcu  --disable-sram-sky130

make
make install
make clean

#INSTALL XSCHEM
sudo apt update
sudo apt install flex libx11-6 libx11-dev libxrender1 libxrender-dev  
sudo apt install libxcb1 libx11-xcb-dev libcairo2 libcairo2-dev
sudo apt install tcl8.6 tcl8.6-dev tk8.6 tk8.6-dev flex bison
sudo apt install libxpm4 libxpm-dev mawk gawk
git clone https://github.com/StefanSchippers/xschem.git
cd xschem
./configure
make 
sudo make install	
make clean

#INSTALL NGSPICE
cd $HOME/projects/designmyic/cad/pdk/downloads
cd ngspice

sudo apt-get install libxaw7-dev
sudo apt-get install libreadline-dev
./configure --enable-xspice --disable-debug --with-readline=yes
make clean
make
sudo make install

### If you get an error during installation, copy-paste error in google, you will find which package to be installed to fix the error
which ngspice
### This will tell where ngspice is installed

cd $HOME/projects/designmyic/cad/pdk/downloads
git clone https://github.com/nataraj-pinakapani/cygnus.git
cd  cygnus
./install.sh

mkdir -p $HOME/projects/designmyic/cad/sky130_invoke/xschem
cd $HOME/projects/designmyic/cad/sky130_invoke/xschem



mkdir -p $HOME/projects/designmyic/cad/gf180mcu_invoke/xschem/simulations
mkdir -p $HOME/projects/designmyic/cad/gf180mcu_invoke/xschem/sch_lib
cd $HOME/projects/designmyic/cad/gf180mcu_invoke/xschem
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/gf180mcuC/libs.tech/xschem/symbols/
ln -s symbols gf180mcu_fd_pr
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/gf180mcuC/libs.tech/xschem/tests/
ln -s tests gf180mcu_tests
cp $HOME/projects/designmyic/cad/pdk/share/pdk/gf180mcuC/libs.tech/xschem/xschemrc .

export PDK_ROOT=$HOME/projects/designmyic/cad/pdk/share/pdk

ln -s design.ngspice design.spice
ln -s sm141064.ngspice  sm141064.spice
ln -s smbb000149.ngspice smbb000149.spice

