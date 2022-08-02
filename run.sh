#! /bin/sh

 cat << "EOF"
  _____   _  _  _           _                         _                              _         
 |_   _| | |(_)| |         | |                       | |                            | |        
   | |   | | _ | | __ ___  | |__    ___  _ __    ___ | |__   _ __ ___    __ _  _ __ | | __ ___ 
   | |   | || || |/ // _ \ | '_ \  / _ \| '_ \  / __|| '_ \ | '_ ` _ \  / _` || '__|| |/ // __|
  _| |_  | || ||   <|  __/ | |_) ||  __/| | | || (__ | | | || | | | | || (_| || |   |   < \__ \
 |_____| |_||_||_|\_\\___| |_.__/  \___||_| |_| \___||_| |_||_| |_| |_| \__,_||_|   |_|\_\|___/

EOF


# Download tar.gz of cli
echo "Downloading tar.gz"
wget https://download.blender.org/release/BlenderBenchmark2.0/launcher/benchmark-launcher-cli-3.0.0-linux.tar.gz

# Extract tar.gz
echo "Extracting"
tar -xf benchmark-launcher-cli-3.0.0-linux.tar.gz

# Cleanup Uneccessary Files
echo "Cleaning Up"
rm -rf README.txt benchmark-launcher-cli-3.0.0-linux.tar.gz

# Get user to authenticate
# echo "Please Authenticate"
# ./benchmark-launcher-cli authenticate

# Running Benchmark
echo "Running Benchmark"
./benchmark-launcher-cli benchmark monster junkshop classroom -b 3.2.1 --submit

# Cleanup
echo "Cleaning up benchmark binary"
rm -rf benchmark-launcher-cli
