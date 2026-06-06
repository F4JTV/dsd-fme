#! /bin/bash
#
cdir=$(pwd)
sudo apt install libpulse-dev libsndfile1-dev libfftw3-dev liblapack-dev socat libusb-1.0-0-dev rtl-sdr librtlsdr-dev libusb-1.0-0-dev cmake git wget make build-essential libncurses-dev libncurses6 libcodec2-dev
git clone https://github.com/F4JTV/mbelib
cd mbelib
git checkout ambe_tones
mkdir build
cd build
cmake ..
make -j $(nproc)
sudo make install
sudo ldconfig
cd $cdir
git clone https://github.com/F4JTV/dsd-fme
cd dsd-fme
#git checkout audio_work
mkdir build
cd build
cmake ..
make -j $(nproc)
sudo make install
sudo ldconfig
