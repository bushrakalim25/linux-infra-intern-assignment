# Troubleshooting Guide

## Common Issues
- Pager freeze → use `--no-pager` or press CTRL+C
- Service not found → check file path `/etc/systemd/system/`
- Timer not running → run `sudo systemctl daemon-reload`
- Firewall inactive → run `sudo ufw enable`
- Nginx not starting → check logs `journalctl -u nginx --no-pager`
