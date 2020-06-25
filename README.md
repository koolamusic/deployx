
# deployx

A set of scripts and tools to setup and build CI/CD pipelines


## Caprover Instructions

- Ensure your firewall allows the following rules `tcp:22,2377,3000,3389,443,4789,7946,80,996 | udp:2377,4789,7946`

### Execute Manually
- Clone this repository using `git clone https://github.com/koolamusic/deployx`
- Change directory using `cd ./deployx`
- Set permissions for the caprover script using `chmod +x ./caprover-ubuntu.sh`
- Watch the script run

### Execute immediately

- Using `CURL` type this into your terminal `curl -fsSL https://raw.githubusercontent.com/koolamusic/deployx/master/caprover-ubuntu.sh | bash`
- Using `WGET` type into your terminal `wget -nv -O - https://raw.githubusercontent.com/koolamusic/deployx/master/caprover-ubuntu.sh && chmod +x caprover-ubuntu.sh | sh
