# First API Device

First test app to try to trigger Raspberry GPIO pins through API calls.
Aim: switch on/off a LED through HTTP calls.

# Installation (on your Raspberry)

1. Install [PiPiper](https://github.com/jwhitehorn/pi_piper) with **sudo** privileges
2. Git clone
3. Bundle install
4. Connect LED to GPIO PIN `#17`

# Usage

## Raspberry side

- Rails server start as sudo: `rbenv sudo rails s`

Note: if you want to access your server from another device (ie: from your phone, which is cool!)

```
rbenv sudo rails s -p 80 -b 0.0.0.0
```

## Computer/Smartphone side

Switch on LED:

```
http://localhost:3000/led/on

# or

http://<raspberry_ip>/led/on
```

Switch off LED:

```
http://localhost:3000/led/off

# or

http://<raspberry_ip>/led/off
```