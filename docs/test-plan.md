# Test Plan

## Service Validation
- Run `systemctl status nginx --no-pager`
- Run `curl http://localhost`

## Firewall Validation
- Run `sudo ufw status`

## User Validation
- Run `id internuser`

## Timer Validation
- Run `systemctl list-timers validate.timer`
- Run `systemctl list-timers infra-maintenance.timer`
