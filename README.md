# Ryzen TDP
Simple Ryzen TDP manager shell scripts using [RyzenAdj](https://github.com/FlyGoat/RyzenAdj).

## Usage
1. Use it manually with shell scripts.
```bash
# set tdp to 8 watt
echo 8 > set_tdp
sudo ./scripts/tdp-service.sh
```

```bash
./scripts/tdp-gui.sh
sudo ./scripts/tdp-service.sh
```

2. Install systemd service:
```bash
sudo cp service/ryzen-tdp.* /etc/systemd/system

systemctl daemon-reload
systemctl enable ryzen-tdp.timer
systemctl start ryzen-tdp.timer
```
