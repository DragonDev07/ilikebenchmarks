#! /bin/sh

 cat << "EOF"
  _  _  _  _          _                         _                              _                                    _    _                   _    _              _        
 (_)| |(_)| |        | |                       | |                            | |                      /\          | |  | |                 | |  (_)            | |       
  _ | | _ | | __ ___ | |__    ___  _ __    ___ | |__   _ __ ___    __ _  _ __ | | __ ___   ______     /  \   _   _ | |_ | |__    ___  _ __  | |_  _   ___  __ _ | |_  ___ 
 | || || || |/ // _ \| '_ \  / _ \| '_ \  / __|| '_ \ | '_ ` _ \  / _` || '__|| |/ // __| |______|   / /\ \ | | | || __|| '_ \  / _ \| '_ \ | __|| | / __|/ _` || __|/ _ \
 | || || ||   <|  __/| |_) ||  __/| | | || (__ | | | || | | | | || (_| || |   |   < \__ \           / ____ \| |_| || |_ | | | ||  __/| | | || |_ | || (__| (_| || |_|  __/
 |_||_||_||_|\_\\___||_.__/  \___||_| |_| \___||_| |_||_| |_| |_| \__,_||_|   |_|\_\|___/          /_/    \_\\__,_| \__||_| |_| \___||_| |_| \__||_| \___|\__,_| \__|\___|
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

# Authentiate
echo "Please Authenticate!"
./benchmark-launcher-cli authenticate

# Cleanup
echo "Cleaning Up"
rm -rf benchmark-launcher-cli