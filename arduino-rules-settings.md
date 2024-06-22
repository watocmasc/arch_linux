`sudo groupadd dialout`

`sudo usermod -aG dialout watoc`

`lsusb`

> Bus 001 Device 012: ID 0403:6001 Future Technology Devices International, Ltd FT232 Serial (UART) IC`

`sudo vim /etc/udev/rules.d/{name}.rules`

> ACTION=="add", SUBSYSTEM=="usb", ATTRS{idVendor}=="0403", ATTRS{idProduct}=="6001", MOD="0660", GROUP="dialout"

`sudo udevadm control --reload`

`sudo udevadm trigger`
