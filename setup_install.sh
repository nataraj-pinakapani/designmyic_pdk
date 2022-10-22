cd $HOME/Downloads
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
./configure  --prefix=$HOME/projects/designmyic/cad/pdk/ --enable-sky130-pdk=$HOME/projects/designmyic/cad/pdk/downloads/skywater-pdk --enable-gf180mcu-pdk --with-sky130-variants=all --with-gf180mcu-variants=all --with-ef-style --enable-xschem-sky130 --enable-alpha-sky130 --enable-primitive-gf180mcu --enable-io-gf180mcu --enable-sc-7t5v0-gf180mcu  --enable-sc-9t5v0-gf180mcu --disable-sram-gf180mcu  --disable-sram-sky130

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

mkdir -p $HOME/projects/designmyic/cad/sky130_invoke
cd $HOME/projects/designmyic/cad/sky130_invoke
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/decred_hash_macro
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/mips_cpu
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_fd_pr
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_stdcells
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/stdcells
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/xschem_verilog_import
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/LICENSE
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/README.md
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/scripts
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_fd_pr.patch
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_tests
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/xschemrc
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/ngspice/spinit

mkdir -p $HOME/projects/designmyic/cad/gf180mcu_invoke
cd $HOME/projects/designmyic/cad/gf180mcu_invoke
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/decred_hash_macro
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/mips_cpu
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_fd_pr
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_stdcells
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/stdcells
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/xschem_verilog_import
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/LICENSE
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/README.md
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/scripts
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_fd_pr.patch
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/sky130_tests
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/xschemrc
ln -s $HOME/projects/designmyic/cad/pdk/share/pdk/sky130B/libs.tech/ngspice/spinit

mkdir -p $HOME/projects/designmyic/cad/gf180mcu_invoke
cd $HOME/projects/designmyic/cad/gf180mcu_invoke
