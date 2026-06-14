# Local VM Reprovisioning Guide

Steps to reprovision infra VM:
1. Stop existing VM
2. Delete old disk snapshots
3. Re‑import base Ubuntu image
4. Run `scripts/provision.sh` to install packages
5. Run `scripts/validate.sh` to confirm setup
