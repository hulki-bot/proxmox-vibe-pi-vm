# Contributing

Thanks for contributing to **proxmox-vibe-pi-vm**.

## Development guidelines

- Keep scripts POSIX/bash-safe and readable
- Keep defaults practical for small homelab setups
- Add/update docs for any behavior change
- Avoid hardcoding environment-specific values

## Local checks

- Shell scripts should pass `shellcheck`
- Markdown links should be valid

(These checks are also enforced in GitHub Actions CI.)

## Commit style

Use clear, conventional messages, e.g.:

- `feat: add vm preflight checker`
- `fix: handle missing storage parameter`
- `docs: clarify x86 vs pi limitations`

## Pull requests

Please include:

1. What changed
2. Why it changed
3. Any migration or breaking behavior notes
