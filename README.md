# pihole-termux
Host pi-hole server on your android phone.
## Steps
1. Root your phone;
2. Download and install Termux (https://f-droid.org/en/packages/com.termux/);
3. In Termux, run this: `wget https://raw.githubusercontent.com/hez01/pihole-termux/main/setup.sh && chmod u+x setup.sh && ./setup.sh`;

Various prompts will come up, mostly default options will do the job (make sure to click `continue` over `exit` in some cases);

Once script is finished, port 53 will be open. You can set up other devices to use your phone as DNS resolver.
