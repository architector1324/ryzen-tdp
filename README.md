# Ryzen TDP
Simple Ryzen TDP manager shell scripts using [RyzenAdj](https://github.com/FlyGoat/RyzenAdj). Also systemd service included.

# Usage
1. Use it manually with shell scripts.
```bash
# set tdp to 8 watt
echo 8 > set_tdp
./tdp-service.sh
```

```bash
./tdp-ui.sh
./tdp-service.sh
```

2. Install systemd service:
```bash
sudo cp ryzen-tdp.service ryzen-tdp.timer /etc/systemd/system
systemctl enable ryzen-tdp.timer
systemctl start ryzen-tdp.timer
```
