#!/usr/bin/env bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
  echo "Run with sudo: sudo $0"
  exit 1
fi

apt-get update -y
DEBIAN_FRONTEND=noninteractive apt-get install -y \
  qemu-guest-agent \
  git curl wget \
  build-essential \
  python3-venv python3-pip \
  tmux htop jq unzip

systemctl restart qemu-guest-agent || true

echo "Postinstall complete."
