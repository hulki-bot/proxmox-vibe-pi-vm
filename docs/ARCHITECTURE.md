# Architecture Notes

## Why x86 VM instead of Pi image emulation?

On most Proxmox hosts (x86), a native x86 Linux VM is:

- faster
- easier to maintain
- easier to automate
- more stable for live demos

ARM emulation is possible, but slower and more brittle.

## Recommended workflow for blog/video demos

1. Build/prototype in this x86 VM
2. Keep code portable (avoid arch-specific dependencies where possible)
3. If needed, final validation run on real Pi hardware

