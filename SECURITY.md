# Security Notes

## Intended scope

This project is for provisioning a development/demo VM. It does **not** harden your entire host/network automatically.

## Recommended baseline after provisioning

- Change default password immediately
- Prefer SSH key auth over password auth
- Restrict SSH access to trusted networks/VPN
- Keep guest OS up to date (`apt update && apt upgrade`)

## Responsible disclosure

If you discover a security issue in these scripts, open a private report via GitHub security advisory (preferred), or open an issue without sensitive details.
