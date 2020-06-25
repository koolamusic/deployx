#! /bin/sh

# SET OF SCRIPTS REQUIRED TO SETUP CAPROVER ON UBUNTU


# INSTALL DOCKER USING DOCKER INSTALL SCRIPT
# curl -fsSL https://get.docker.com/ | sh
 if ! command -v docker &>/dev/null; then
    echo "--> Installing docker"
    if uname -r | grep -q linode; then
      echo "--> NOTE: Using Linode? Docker may complain about missing AUFS support."
      echo "    You can safely ignore this warning."
      echo "    Installation will continue in 10 seconds."
      sleep 10
    fi
    export CHANNEL=stable
    wget -nv -O - https://get.docker.com/ | sh
  fi




# DOCKER SETUP FOR CAPROVER
docker run -p 80:80 -p 443:443 -p 3000:3000 -v /var/run/docker.sock:/var/run/docker.sock -v /captain:/captain caprover/caprover

echo "Next process ---install Node and npm--- will in exactly start in 90 seconds."
date
sleep 90




# INSTALL NODE AND NPM FROM NODESOURCE SCRIPT NODE v12
# Using Ubuntu
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install -y nodejs




# SETUP CAPROVER USING NPM
echo "----> install caprover cli"
sudo npm install -g caprover

echo "Begin Caprover Setup Setup in 30 seconds. Please answer the questions correctly"
sleep 30


# setup
caprover serversetup
