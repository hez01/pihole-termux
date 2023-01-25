# pihole-termux
Host pi-hole server on your android phone.

Do it at your own risk. I am not responsible for any damages that could happen. Script is provided as-is. May not even work.
## Requirements:
- Root
- Termux (https://f-droid.org/en/packages/com.termux/);
## Steps
1. Root your phone;
2. Download and install Termux (https://f-droid.org/en/packages/com.termux/);
3. In Termux, run this: `pkg update && pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/Installer/Debian/debian.sh && bash debian.sh && su -c "export PATH=$PATH:/data/data/com.termux/files/usr/bin/ && ./start-debian.sh 'apt update && wget https://raw.githubusercontent.com/hez01/pihole-termux/main/install.sh && chmod u+x install.sh && ./install.sh && ./install.sh'"`;
4. Run `dig google-analytics.com @localhost` to check what IP address is returned (should be `0.0.0.0`)

Various prompts will come up, mostly default options will do the job (make sure to click `continue` over `exit` in some cases);

Once script is finished, port 53 will be open. You can set up other devices to use your phone as DNS resolver.

Only tested on an emulator. The full script has not been tested.
## How it works:
1. The script downloads and installs Debian Linux on your android (The script code taken from AnLinux https://f-droid.org/en/packages/exa.lnx.a/, do it at your own risk);
2. On Debian, it just installs the pi-hole.
