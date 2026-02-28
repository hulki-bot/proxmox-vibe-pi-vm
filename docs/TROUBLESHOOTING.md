# Troubleshooting

## VM has no visible login in Proxmox console

Switch VGA mode:

```bash
./scripts/set-console-mode.sh --vmid 126 --mode virtio
```

Then reopen noVNC.

## SSH says "Connection refused"

- Wait 20-60 seconds after first boot/reboot
- Verify VM got IP:

```bash
qm guest cmd <VMID> network-get-interfaces
```

- Check SSH inside guest:

```bash
qm guest exec <VMID> -- systemctl status ssh --no-pager
```

## Password login does not work

Cloud images often default to key auth only. Either:

- pass `--sshkeys-file` in `create-vm.sh`, or
- inside VM set `PasswordAuthentication yes` and restart ssh.

