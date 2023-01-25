# pihole-termux
Host pi-hole server on your android phone.
## Requirements:
- Root
- Termux (https://f-droid.org/en/packages/com.termux/);
## Steps
1. Root your phone;
2. Download and install Termux (https://f-droid.org/en/packages/com.termux/);
3. In Termux, run this: `wget https://raw.githubusercontent.com/hez01/pihole-termux/main/setup.sh && chmod u+x setup.sh && ./setup.sh`;
4. Run `dig google-analytics.com @localhost` to check what IP address is returned (should be `0.0.0.0`)

Various prompts will come up, mostly default options will do the job (make sure to click `continue` over `exit` in some cases);

Once script is finished, port 53 will be open. You can set up other devices to use your phone as DNS resolver.

Only tested on an emulator. The full script has not been tested.
## How it works:
1. The script downloads and installs Debian Linux on your android (The script code taken from AnLinux https://f-droid.org/en/packages/exa.lnx.a/, do it at your own risk);
2. On Debian, it just installs the pi-hole.
