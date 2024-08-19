`ls /sys/class/power_supply` - shows the number of batteries
// AC0 BAT0 BAT1 ...

`sudo vim /etc/systemd/system/<title>.service` - creating a battery service

### //in VIM \n
```
[Unit]
Description=Set the battery charge thresholdAfter=multi-user.target
StartLimitBurst=0
[Service]
Type=oneshotRestart=on-failure
ExecStart=/bin/bash -c 'echo CHARGE_STOP_THRESHOLD > /sys/class/power_supply/BATTERY_NAME/charge_control_end_threshold'
[Install]
WantedBy=multi-user.target
```

// BATTERY_NAME - battery name
// CHARGE_STOP_THRESHOLD - The required charge level is 60 or 80

`sudo systemctl enable <title>.service` 
`sudo systemctl start <title>.service` 

`cat /sys/class/power_supply/<BATTERY_NAME>/status` - to check
