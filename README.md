# First API Device

**Goal**: switch on/off a LED through HTTP calls.

First test app to try to trigger Raspberry GPIO pins through API calls.

## Installation (on your Raspberry)

1. Install [PiPiper](https://github.com/jwhitehorn/pi_piper) with **sudo** privileges
2. Git clone
3. Bundle install
4. Connect LED to GPIO PIN `#17`

## Usage

### Raspberry side: Rails server start
If you want to access your server from another device (ie: from your phone, which is cool!), you have to start the Rails server on `port 80` and allow any ip address:

```
rbenv sudo rails s -p 80 -b 0.0.0.0
```

### Computer/Smartphone side: requests

Switch on LED:

```bash
http://localhost:3000/led/on

# or

http://<raspberry_ip>/led/on
```

Switch off LED:

```bash
http://localhost:3000/led/off

# or

http://<raspberry_ip>/led/off
```