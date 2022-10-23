#Install SKY130 & GF180MCU PDK#

mkdir -p $HOME/projects/designmyic/cad/pdk/downloads
cd $HOME/projects/designmyic/cad/pdk/downloads
rm -rf magic
git clone git://opencircuitdesign.com/magic
cd magic
./configure
make
sudo make install

cd ../
rm -rf open_pdks
git clone git://opencircuitdesign.com/open_pdks
cd open_pdks
./configure  --prefix=$HOME/projects/designmyic/cad/pdk/ --enable-sky130-pdk --with-sky130-variants=all --with-ef-style --enable-xschem-sky130 --enable-alpha-sky130
make
make install
make clean
