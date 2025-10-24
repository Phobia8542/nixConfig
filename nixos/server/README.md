# Server configuration

## Ports opened

Ports `80` & `443` were opened to make jellyfin accessible through your browser

And port `8096` is the default port for jellyfin 

## Changes to be made before starting service (Based on host machine)

**Username**: (user = "phobes";) should be changed to YOUR username (default name is jellyfin)

**Proxy IP address**: (reverse_proxy http://x.x.x.x:80) should be set to the IP address of the hostmachine

The reverse proxy is being used for continuity. If you're on a wired connection and/or using a VPN you'll understand why.  

Run the command `ip a | grep inet` to get your IP address. Then replace the IP address in the proxy field

## Packages installed

`jellyfin` - The package/service itself

`jellyfin-web` - For the web client

`jellyfin-ffmpeg` - Transcodes media to devices even if they don't support the original codec or audio format

`ffmpeg-full` - Includes all supported codecs & libraries (**Required for Atmos**)